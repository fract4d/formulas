

Carr1000 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*1/sqr(cotanh(1/c)))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1001 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*1/fn4(cotanh(1/c)))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1002 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*sinh(1/(-c)))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1003 {
  z=((1/pixel)/0.71)/(0.85/pixel+2.324)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=(z*sinh(4/(-c)))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1004 {
  z=imag(1/(pixel*pixel))
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(0.5/pixel):
  z=z*z/c*c
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1005 {
  z=(1/pixel^pixel+2.3)
  c=conj(imag(pixel))/z-2.5^(pixel+2.324)/(5/pixel):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1006 {
  z=(1/pixel^pixel+2.3)
  c=(imag(1/(pixel*pixel)))/z-2.5^(pixel+2.324)/(5/pixel):
  z=conj(z*1/c)/conj(pixel^pixel-c*c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1007 {
  z=sqr(sqr(sqr(1/pixel^pixel+2.3)))
  c=(imag(1/(pixel*pixel)))/z-2.5^(pixel+2.324)/(5/pixel):
  z=conj(z*1/c)/conj(pixel^pixel/c*c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1008 {
  z=(pixel*pixel+5.3)*(1.099,0)
  c=z-2.5^(pixel*pixel)/(1.099,0):
  z=z*1/c
  z=z*1/c
  z=(z*1/c)/(1.099,0)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1009 {; Piece of Barnsley thrown in here.
  z=1/(pixel*pixel)
  c=((0.6,1.1)*(|3.324|<=0)+3.324):
  z=z*z+1/c
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1010 {; Piece of Barnsley thrown in here.
  z=1/(pixel*pixel+2)
  c=((0.1,0.36)*(|3.324|<=0)+3.324):
  z=z*z+1/c
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1011 {
  z=1/((imag(pixel-2))+flip(real(pixel-2)))
    ; c=((4.299,-1.2)*cotanh(|1.024|<=0)+(1.024)):
  c2 = 1.048576 :
  z = (pixel-z*z)/(pixel-c2)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1012 {; SJMand variant
  z=(real(pixel))+1.224*(flip(imag(pixel)))
  c=2.224+(1.099,0)*(real(pixel))+flip(imag(pixel)):
  z=fn2(z*1/c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1013 {; SJMand variant
  z=(real(pixel))+1.224*(flip(imag(pixel)))
  c=2.224+(1.224)*(real(pixel))+flip(imag(pixel)):
  z=(1/pixel*(z*2.234))*1/c
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1014 {; SJMand variant
  z=(real(pixel))+1.224*(flip(imag(pixel)))
  c=2.224+(1.224)*(real(pixel))+flip(imag(pixel)):
  z=((1/pixel*(z*(1.099,0)))*1/c)/((1.0,0.4)/(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1015 {
  z=1/pixel
  c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
  z=(1/z^z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1016 {
  z=1/pixel
  c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
  z=(pixel-(1/z^z*z+z))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1017 {
  z=1/pixel
  c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
  z=(pixel-(z*1/c))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1018 {
  z=1/pixel
  c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
  z=(pixel-conj(z*z+c)+(1.099,0))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1019 {
  z=1/(pixel*pixel*pixel)
  c=2.224+(2.224)*(real(pixel))+flip(imag(pixel))-1/pixel:
  z=((pixel-sqr(z+c))/(pixel-c*c))/1.3
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1020 {
  z=1/flip(pixel)
  c=1/cos(z*z):
  z=(z/c/pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1021 {
  z=pixel, c=1/(pixel^3):
  z=(pixel-z*z)/(pixel-(z*1/c/pixel))
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1022 {
  z=pixel
  c=1/(pixel^fn1(z/(1/pixel))):
  z=(pixel-(z*1/c))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1023 {
  z=1/(pixel*pixel)
  c=1/(pixel^real(z/cosxx(1/pixel))):
  z=((pixel-sqr(z/c))/(pixel-c*c))/1.3
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1024 {
  z=1/(pixel*pixel+2)
  c=1/(pixel^real(z/cosxx(1/pixel+1))):
  z=((pixel-sqr(z/c))/(pixel-c*c))/1.3
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1025 {
  z=imag(1/(abs(pixel*pixel)/real(pixel)))
  c=1/(pixel^real(z/cosxx(1/pixel+1))):
  z=(1/z^z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1026 {
  z=imag(1/(abs(pixel*pixel)/real(pixel)))
  c=1/(pixel^real(1/z^z/cosxx(1/pixel+1))):
  z=(z/c/pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1027 {
  z=imag(1/(abs(pixel*pixel)/real(pixel)))
  c=1/(pixel^real(1/z^z/cosxx(1/pixel+3))):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1028 {
  z=imag(1/(abs(pixel*pixel)/real(pixel)))
  c=1/(pixel^real(1/z^z/cosxx(1/pixel+3))):
  z=(pixel-z*z*z)/(pixel-c*c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1029 {
  z=imag(1/(abs(pixel*pixel)/real(pixel)))
  c=1/(pixel^real(1/z^z/cosxx(1/pixel+3))):
  z=(z^z*z+z)/(pixel-c*c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1030 {
  z=imag(1/(abs(pixel*pixel)/real(pixel)))
  c=1/(pixel^real(1/z^z/cos(1/pixel+3))):
  z=(z^z*z+z)/(pixel-c*c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1031 {; For Fractint 19.2 and above.
  z=1/pixel-1
  c=1/((pixel^z)-2)*(pixel^(z-2)):
  z=sqrt(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1032 {; For Fractint 19.2 and above.
  z=1/pixel-1
  c=1/atanh((pixel^z)+2)*(pixel^(z+2)):
  z=sqrt(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1033 {; 19.2 or above.
  z=1/pixel-1
  c=1/((pixel^z)+2)*conj(pixel^(z+2)):
  z=acosh(1/z^z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1034 {
  z=1/(pixel*pixel)
  c=1/((pixel^z)+2)*(pixel^(z+2)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1035 {
  z=1/(pixel*pixel)
  c=1/((pixel^z*z)+2)*(pixel^(z+2)):
  z=sqrt(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1036 {
  z=1/(pixel*pixel)
  c=1/((pixel^z*z)+3)*(pixel^(z*z+3)):
  z=(z*1/z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1037 {
  z=1/(pixel*pixel)
  c=1/((pixel^z*z*z)+3)*(pixel^(z*z*z+3)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1038 {
  z=1/(pixel*pixel)
  c=1/((pixel^z*z*z)+3)*(pixel^(z*z*z+3)):
  z=(1/z^z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1039 {
  z=1/(pixel*pixel)
  c=1/((pixel^z)+3)*(pixel^(z+3)):
  z=(z*z+c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1040 {
  z=1/(pixel*pixel)
  c=1/((pixel^z)+3)*(pixel^(z+3)):
  z=(z*z*z+c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1041 {
  z=1/(pixel*pixel)
  c=1/((pixel^z)+3)*(pixel^(z+3)):
  z=(z^1/z+2*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1042 {
  z=1/(pixel*pixel)
  c=1/((pixel^z*z)-1)*(pixel^(z*z-1)):
  z=(z^1/z+2*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1043 {
  z=1/(pixel*pixel+2)
  c=1/((pixel^z*z)+2)*(pixel^(z*z+2)):
  z=(z^1/z+2*z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1044 {
  z=1/(pixel*pixel+2)
  c=1/((pixel^z*z)+2)*(pixel^(z*z+2)):
  z=(1/z*1/pixel*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1045 {
  z=1/(pixel*pixel+2)
  c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
  z=(1/z*1/pixel*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1046 {
  z=1/(pixel*pixel+2)
  c=1/(sqrt(pixel^z*z*1/z)+2)*sqrt(pixel^(z*z*1/z+2)):
  z=(1/z*1/pixel*z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1047 {
  z=1/((pixel*pixel)+3)
  c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
  z=((1/z*1/pixel*z*z+z)/sqrt(pixel-c*c))/1.4
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1048 {
  z=1/((pixel*pixel)+3)
  c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
  z=((z*1/c)/sqrt(pixel-c*c))/1.4
  |real(z)| <=100
  ;SOURCE: 24carr.frm
}


Carr1049 {
  z=1/(real(pixel)+flip(imag(pixel)*2.924))
  c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1050 {
  z=sqrt(1/pixel*4/pixel)
  c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1051 {
  z=sqrt(1/pixel*4/pixel)
  c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
  z=(z*1/c+1/pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1052 {
  z=sqrt(1/pixel*4/pixel)
  c=1/(sqrt(pixel^z*z)+2)*sqrt(pixel^(z*z+2)):
  z=((z*2/c+4/pixel)/(pixel-c*c))/1.6
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1053 {
  z=1/(pixel*pixel)
  c=1/(sqrt(pixel^z*z)+3)*1/sqrt(pixel^(z*z+3)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1054 {
  z=1/(pixel*pixel)
  c=pixel^z+pixel^1/z:
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1055 {
  z=1/(pixel*pixel)
  c=pixel^z+pixel^1/z:
  z=(z*z+flip(c*c))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1056 {
  z=1/(pixel*pixel)
  c=z^pixel+1/z^pixel:
  z=(z*z+flip(c*c))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1057 {
  z=1/(pixel*pixel)
  c=pixel^z+pixel^1/z:
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1058 {
  z=1/(pixel*pixel)
  c=sqrt(pixel^z+pixel^1/z):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1059 {
  z=1/(pixel*pixel)
  c=fn1(pixel^z+pixel^1/z):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1060 {
  z=1/(pixel*pixel)
  c=pixel^z+pixel^1/z:
  z=(1/z^z*z+z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1061 {
  z=1/(pixel*pixel)
  c=sqr(pixel^real(z)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1062 {
  z=1/(pixel*pixel)
  c=sqr(pixel^(1/z)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1063 {
  z=1/(pixel*pixel)
  c=pixel^z/pixel:
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1064 {
  z=1/(pixel*pixel)
  c=pixel^z/pixel:
  z=(2+(z*1/c)/(pixel-c*c))/1.67
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1065 {
  z=real(1/(pixel*pixel))
  c=pixel^z/pixel:
  z=((pixel-(z*1/c))/(pixel-c*c))/1.6
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1066 {
  z=conj(1/(pixel*pixel*pixel))
  c=pixel^(z*z+z):
  z=pixel*(z^1/c)/(pixel-conj(c^c))
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1067 {
  z=conj(1/(pixel*pixel*pixel))
  c=pixel^(1/z^z*z+z):
  z=(pixel*(z^1/c)/(pixel-conj(c^c)))/1.8
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1068 {
  z=1/pixel
  c=z*z^z:
  z=((pixel-z*z)/(pixel-c*c))/1.3
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1069 {
  z=1/pixel, c=pixel^(z^(1/z^z*z+z)):
  z=((2*z)*1/c)/(pixel-c*c)
  z=((2*z*z)+c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1070 {
  z=1/pixel, c=1/cabs(1/pixel*1/pixel):
  z=(z*z*1/abs(c))/(pixel-c*c*c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1071 {
  z=1/pixel, c=1/cabs(1/pixel*1/pixel):
  z=(z*z*z*z+c)/(pixel-c*c*c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1072 {
  z=1/pixel, c=1/cabs(1/pixel*1/pixel):
  z=(1/z^z*z+z)/(pixel-c*c*c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1073 {
  z=1/pixel*1/pixel
  c=(z-2)^pixel:
  z=(1/z^z*z*z+z+2)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1074 {
  z=(1/pixel*0.91/pixel)
  c=((z-3)^pixel)+1/pixel:
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1075 {
  z=(1/pixel*0.91/pixel)
  c=((z-3)^pixel)+0.85/pixel:
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1076 {
  z=(pixel*0.91/pixel)
  c=((1.8*(z-3)^pixel)+0.65/pixel):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1077 {
  z=sqrt(0.91/pixel)
  c=(z-3)-pixel:
  z=1/z^z*z+z
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1078 {; Modified Brad Beacham formula
  z=1/pixel, c=1/z^z*z+z, f=0:
  z=((f)*fn1(z))+((1-f)*fn2(c))+c
  f=(z*1/c)/(pixel-c*c)
  f< 1.0
  ;SOURCE: 25carr.frm
}


Carr1079 {
  z=1/pixel, c=1/pixel*0.91/pixel:
  z=z*1/sin(c)
  z=(z+(1/pixel-sin(c)))/(pixel-c*c)
  |real(z)| <=100    
  ;SOURCE: 25carr.frm
}


Carr1080 {
  z=1/pixel, c=cosxx(z/pixel)*sqr(1/pixel):
  z=(2*z+(4/pixel-sqrt(c)))/(pixel-c*c)
  |real(z)| <=100    
  ;SOURCE: 25carr.frm
}


Carr1081 {
  z=1/pixel, c=cotanh(z/pixel)*sqr(1/pixel):
  z=(2*z+(4/pixel-sqrt(c)))/(pixel-c*c)
  |real(z)| <=100    
  ;SOURCE: 25carr.frm
}


Carr1082 {
  z=1/pixel, c=cosxx(z^z/pixel-2):
  z=((z*1/(c^c))/(pixel-c*c))/1.45
  |real(z)| <=100    
  ;SOURCE: 25carr.frm
}


Carr1083 {
  z=pixel, c=z^(cosxx(2.524)/pixel):
  z=z/c
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100    
  ;SOURCE: 25carr.frm
}


Carr1084 {
  z=1/pixel, c=1/z^(z/pixel):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100    
  ;SOURCE: 25carr.frm
}


Carr1085 {
  z=4/pixel, c=(z/pixel)/(z^(-z/pixel)):
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100    
  ;SOURCE: 25carr.frm
}


Carr1086 {; DISECTED MANDELBROT
   ; TO GENERATE "STANDARD" MANDELBROT, SET P1 = 0,0 & ALL FN = IDENT
  z=1/pixel, cx=flip(real(1/pixel)), cy=flip(imag(z)), k=2+p1:
  zx=real(z), zy=imag(z)
  x=z*(zx*zx-zy*zy)+cx
  y=cx*(k*zx*zy)+cy
  z=((1/z^z*z+z)/(pixel-cx*cx))/1.32
  |z| <(10+p2)
  ;SOURCE: 25carr.frm
}


Carr1087 {
  z=1/pixel, c=abs(real(1/pixel)):
  z=(sqr(z/pixel))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1088 {
  z=1/pixel*0.91/pixel, c=abs(real(1/pixel)):
  z=pixel-(1/z^2.224+1/pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1089 { 
  z=1/pixel*0.91/pixel, c=1.75/pixel:
  z=((1.099,0)-z)/(pixel-c*c)
  |z| <=100
  ;SOURCE: 25carr.frm
}


Carr1090 {; Use a counter to gradually change proportions of algorithms
          ; Bradley Beacham  [74223,2745]
          ; Modofied Brad Beacham formula
          ; P1 sets starting value for k
          ; P2 varies step size for incrementing k
          ; P3 varies bailout value
  z =pixel, c=pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
  k = k + kstep
  z = k*(1/z^z*z+z) + (1-k)*(z*z) + c
  |z| < limit
  ;SOURCE: 25carr.frm
}


Carr1091 {; Use a counter to gradually change proportions of algorithms
          ; Bradley Beacham  [74223,2745]
          ; Modified Brad Beacham formula
          ; P1 sets starting value for k
          ; P2 varies step size for incrementing k
          ; P3 varies bailout value
  z =pixel, c=pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
  k = k + kstep
  z = k*(1/z^z*z+z) + (1-k)*(z*1/c) + c
  |z| < limit
  ;SOURCE: 25carr.frm
}


Carr1092 {
  z=pixel+4/pixel, c=z+1/pixel:
  z=z/c
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1093 {
  z=sin(1/pixel)/(1.099,0), c=cosxx(1/pixel)/(1.099,0):
  z=z/c
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1094 {
  z=sin(1/pixel)/(1.099,0), c=cosxx(1/pixel)/(1.099,0):
  z=z*1/c
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1095 {
  z=sin(1/pixel)/(0.3,0), c=cosxx(1/pixel)/(0.3,0):
  z=z*1/c
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1096 {
  z=sinh(1/pixel)/(0.3,0), c=cosh(1/pixel)/(0.3,0):
  z=z*1/c
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1097 {
  z=sinh(1/pixel)/(0.45,0), c=cosh(1/pixel)/(0.45,0):
  z=z*1/c
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1098 {
  z=sinh((1/pixel)/(0.95,0)), c=cosxx((1/pixel)/(0.95,0)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1099 {
  z=sinh((1/pixel)/(2.95,0)), c=cosxx((1/pixel)/(2.95,0)):
  z=(pixel-sqr(z/c)-1/pixel)/(pixel-c*c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 25carr.frm
}


Carr1100 {
  z=sinh((2.5/pixel)/(2.95,0)), c=cosxx((2.5/pixel)/(2.95,0)):
  z=(pixel-sqr(z/c)-1/pixel)/(pixel-c*c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1101 {
  z=sinh((2.5/pixel)/(1.099,0)), c=cosxx((2.5/pixel)/(1.099,0)):
  z=(pixel-sqr(z/c)-2/pixel)/(pixel-c*c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1102 {
  z=sinh((2.5/pixel)/(2.099,0)), c=cosxx((2.5/pixel)/(2.099,0)):
  z=(pixel-sqr(z/c)-2/pixel)/(pixel-c*c)
  z=sqr(z*1/c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1103 {
  z=sinh((2.5/pixel)/(2.099,0)), c=cosxx((2.5/pixel)/(2.099,0)):
  z=(pixel-sqr(z/c)-2/pixel)/(pixel-c*c)
  z=sinh(z*1/c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1104 {
  z=sinh((2.5/pixel)/(1.095,0)), c=cosxx((2.5/pixel)/(1.095,0)):
  z=(pixel-sqr(z/c)-1.5/pixel)/(pixel-c*c)
  z=(pixel-(z/c-1/pixel))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1105 {
  z=sinh((2.5/pixel)/(1.095,0)), c=cosxx((2.5/pixel)/(1.095,0)):
  z=(pixel-(z/c-1/pixel))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1106 {
  z=sinh((2.5/pixel)/(1.095,0)), c=cosxx((2.5/pixel)/(1.095,0)):
  z=z*z+c
  z=(pixel-(z*1/c-1/pixel))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1107 {
  z=conj((2.5/pixel)/(1.095,0)), c=cosxx((2.5/pixel)/(1.095,0)):
  z=(log(z^2)^conj(z*1/c)+1/pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1108 {
  z=conj((2.699,0)/(4/pixel)), c=flip((2.699,0)/(1/pixel)):
  z=(z*1/c)/(pixel-c*c)
  z=z/c
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1109 {
  z=(1/pixel)/(1.099,0), c=pixel/(1.099,0):
  z=(z*z/(sinh(z)))*1/c
  |z| <= 100
  ;SOURCE: 26carr.frm
}


Carr1110 {
  z=(1/pixel)/(1.099,0), c=pixel/(1.099,0):
  z=(z*z/(cosxx(z)))*1/c
  |z| <= 100
  ;SOURCE: 26carr.frm
}


Carr1111 {
  z=1/pixel*0.91/pixel, c=cabs(1/pixel)/cotanh(1.099,0):
  z=(sqr(conj(z*1/c))+(pixel))
  |real(z)| <=100          
  ;SOURCE: 26carr.frm
}


Carr1112 {
  z=1/pixel*0.91/pixel, c=cabs(1/pixel*1/pixel)/cotanh(1.099,0):
  z=((sqr(conj(z*1/c))+(pixel*pixel)))/(pixel-z*1/c)
  |real(z)| <=100          
  ;SOURCE: 26carr.frm
}


Carr1113 {
  z=cabs(1/pixel), c=cabs(1/pixel)/tanh(1.099,0):
  z=((sqr(conj(z*1/c))+(pixel*pixel)))/(pixel-z/c)
  |real(z)| <=100          
  ;SOURCE: 26carr.frm
}


Carr1114 {
  z=(1/pixel)/(1.099,0), c=(pixel-0.5)/(1.099,0): 
  z=sqr(z)+conj((pixel-c)-1)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1115 {
  z=(1/pixel)/(1.099,0), c=(pixel-0.5)/(1.099,0): 
  z=(sqr(z)+conj((pixel-c)-1))/(pixel-z/c)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1116 {
  z=(1/pixel)/(2.0,0), c=(pixel-0.5)/(2.0,0): 
  z=(sqr(conj(z*1/c))+conj((pixel-c)-1))/(pixel-z*z+c)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1117 {
  z=(2.0,0)/(1/pixel), c=(2.0,0)/(pixel-0.5): 
  z=(sqr(conj(z))+conj((pixel-c)-1))/(pixel-z*1/c)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1118 {
  z=(2.3,0)/(1/pixel), c=(2.3,0)/(pixel-0.67): 
  z=(sqr(conj(z-1/pixel))+conj((pixel-z/c)-1))/(pixel-z*1/c)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1119 {
  z=(2.3,0)/(4/pixel), c=(2.3,0)/(pixel-0.67):
  z=z*1/c 
  z=(sqr(conj(z-1/pixel))+conj((pixel-z/c)-1))/(pixel-z*1/c)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1120 {
  z=(0.3,0)/(4/pixel), c=1/(pixel-0.87):
  z=(z/c)/(pixel-c*c) 
  z=(sqr(conj(z-1/pixel))+conj((pixel-z/c)-1))/(pixel-z*1/c)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1121 {
  z=(0.9,0)/(4/pixel), c=1.23/(pixel-0.87):
  z=z*1/c
  z=(pixel-z*z)/((pixel-c*c)+1/pixel)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1122 {
  z=(0.3,0.6)/(3/pixel), c=1.63/(pixel-0.87):
  z=(z*z+c)/1.34
  z=(pixel-z*z)/((pixel-c*c)+1/pixel)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1123 {
  z=(1.099,0)/(pixel-(1.099,0)), c=1/pixel:
  z=pixel-((z-1)/z+exp(z))/(pixel-(z*1/c))
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1124 {
  z=(1.099,0)/(pixel-(1.099,0)), c=exp(1/pixel*0.91/pixel):
  z=(z*1/c+1/pixel)/(pixel-conj(c*c))
  z=z*1/c
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1125 {
  z=exp(1.099,0)/(pixel-(1.099,0)), c=exp(1/pixel*0.91/pixel):
  z=(z*1/c+1/pixel)/(pixel-conj(c*c))
  z=z*z*z+c
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1126 {
  z=exp(1.099,0)/((1.099,0)+pixel)
  c=(exp(1/pixel*0.91/pixel))/(0.3,0.6):
  z=z+c-abs(imag(z))
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1127 {
  z=exp(1.099,0)/((1.099,0)+pixel)
  c=(exp(1/pixel*0.91/pixel))/(0.3,0.6):
  z=(z+c-abs(imag(z)))/(pixel-c*c)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1128 {
  z=exp(2.099,0)/((1.099,0)+pixel)
  c=(exp(1/pixel*0.91/pixel))/(1.099,0):
  z=(z+c-abs(imag(z)))
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1129 {
  z=sqrt(2.099,0)/((1.099,0)+pixel)
  c=(exp(1/pixel*0.91/pixel))/(1.099,0):
  z=(z+c-abs(imag(z)))
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1130 {
  z=sqrt((1.099,0)+pixel)/(1.099,0)
  c=(exp(1/pixel*0.91/pixel))/(1.099,0):
  z=(z+c-abs(imag(z)))
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1131 {
  z=sqrt((1.099,0)+pixel)/(1.099,0)
  c=(1/pixel*0.91/pixel)/(1.099,0):
  z=(z+c-abs(imag(conj(z))))/(1/pixel)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1132 {
  z=cotanh((1.099,0)+pixel)/(1.099,0)
  c=(1/pixel*0.91/pixel)/(1.099,0):
  z=(z+c-abs(imag(conj(z))))/(1/pixel)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1133 {
  z=cotanh((1.099,0)+pixel)/(1.099,0)
  c=(1/pixel*0.91/pixel)/(1.099,0):
  z=(z+c-abs(imag(conj(z))))/(1/pixel)
  z=(z+c-abs(imag(conj(z))))/(1/pixel)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1134 {
  z=sqrt((1.099,0)+pixel)/sinh(1.099,0)
  c=exp(1/pixel*0.91/pixel)/sinh(1.099,0):
  z=(z+c-abs(imag(conj(z))))/(1/pixel)
  z=(z+c-abs(imag(conj(z))))/(1/pixel)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1135 {
  z=sqrt((1.099,0)+pixel)/(1.099,0)
  c=sqr(pixel)/sqr(1/(1.099,0)):
  z=c-z*(1.099,0)
  z=c-z*pixel
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1136 {
  z=sqrt((1.099,0)+pixel)/(1.099,0)
  c=sqr(pixel)/sqr(1/(1.099,0)):
  z=pixel-(c-z*(1.099,0))
  z=(1.099,0)-(c-z*pixel)
  |real(z)| <=100 
  ;SOURCE: 26carr.frm
}


Carr1137 (XAXIS_NOPARM) {; FractalFenderC modified
    ; Edited for Fractint v.20 by George Martin, 10/98
  z=(pixel)/(1.099,0), x=|z|:
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z)+pixel
  x=|z|
  x<=4 
  ;SOURCE: 26carr.frm
}


Carr1138 (XAXIS_NOPARM) {; FractalFenderC modified
    ; Edited for Fractint v.20 by George Martin, 10/98
  z=(pixel)/(2.099,0), x=|z|:
  IF (x>1)
    z=sinh(z)+pixel
  ENDIF
  z=sqr(z)+(pixel)
  x=|z|
  x<=4 
  ;SOURCE: 26carr.frm
}


Carr1139 (XAXIS_NOPARM) {; FractalFenderC modified
    ; Edited for Fractint v.20 by George Martin, 10/98
  z=(pixel)/(2.099,0), x=|z|:
  IF (x>1)
    z=sinh(z)+pixel
  ENDIF
  z=(z*z)+(pixel*pixel*pixel)
  x=|z|
  x<=4 
  ;SOURCE: 26carr.frm
}


Carr1140 {
  z=pixel/((1.099,0)*(1/pixel))
  c=pixel^(1/cosxx(pixel)):
  z=sqr(1/pixel)+conj(z+c-abs(imag(|z|)))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1141 {
  z=pixel/((1.099,0)*(1/pixel))
  c=pixel^(1/cosxx(pixel)):
  z=sqr(z*1/c)+conj(z+c-abs(imag(|z|)))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1142 {
  z=pixel/((1.099,0)*(1/pixel))
  c=pixel^(1/cosxx(pixel)):
  z=sqr(z*1/c)+sqrt(z+c-abs(imag(|z|)))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1143 {
  z=imag(pixel/((1.099,0)*(1/pixel)))
  c=pixel^(2/cosxx(pixel)):
  z=sqr(z*1/c)+imag(z+c-abs(imag(|z|)))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1144 {
  z=imag(pixel/((2.099,0)*(1/pixel)))
  c=pixel^(2/conj(pixel)):
  z=sqr(z/c)+imag(z+c-abs(imag(|z-0.002|)))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1145 {
  z=imag(pixel/((2.099,0)*(1/pixel)))
  c=pixel^(2/conj(pixel)):
  z=sqr(1/z^z*z+z)+imag(z+c-abs(imag(|z-0.002|)))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1146 {
  z=(pixel/((2.099,0)*cosxx(1/pixel)))
  c=imag(pixel^(1/flip(pixel))):
  z=(z*z+c)+imag(z+c-abs(imag(|z-0.002|)))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1147 {
  z=(pixel/((2.099,0)*cosxx(1/pixel)))
  c=imag(pixel^(1/sqr(pixel))):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1148 {
  z=pixel^(sinh(pixel)/cosh(pixel))
  c=pixel/((1.099,0)*1/z):
  z=(sinh(z)/cosh(c))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1149 {
  z=pixel^(sinh(1.099,0)/cosh(pixel))
  c=pixel/((2.099,0)*1/z):
  z=(sinh(z*z))/(cosh(c*c))
  |real(z)| <=100
  ;SOURCE: 26carr.frm
}


Carr1150 {
  z=pixel^(sinh(1.099,0)/cosh(pixel))
  c=pixel/((2.099,0)*1/z):
  z=cosxx(z)+c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1151 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=(z*z+c)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1152 {
  z=pixel/((1.099,0)^(pixel))
  c=(pixel/((2.099,0)*1/z)):
  z=cosxx((z*z+c)/(z*1/c))
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1153 {
  z=1/pixel
  c=(1.099,0)/(pixel-z):
  z=(cotanh(z*z+(1/z*z)+pixel)/(pixel-c*c))/1.46
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1154 {
  z=1/pixel
  c=(0.3,0.6)/(pixel-z*z):
  z=(z*z-(pixel*pixel*pixel))/(z*z+c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1155 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=(pixel)/(1.099,0), x=|z|:
  IF (x>1)
    z=cosxx(z)+sqr(pixel)
  ENDIF
  z=sqr(z)+(pixel)
  x=|z|
  x<=4 
  ;SOURCE: 27carr.frm
}


Carr1156 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=(pixel)/(1.099,0), x=|z|:
  IF (x>1)
    z=cosxx(z)+sqr(pixel)
  ENDIF
  z=sqr(z)+(pixel/(1.099,0))
  x=|z|
  x<=4 
  ;SOURCE: 27carr.frm
}


Carr1157 {; Modified Wareman formula
  z=1/pixel, root=(1.099,0):
  z3=z*z*z
  z4=z3*z
  z=(3*z4+root)/(4*z3)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1158 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1159 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1160 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-cosxx(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1161 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=cabs(z)-cosxx(c*sqr(z)+pixel)/(pixel-z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1162 {; Forms Faberge' Eggs
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cosh(z+pixel))/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1163 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cosxx(z+pixel))/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1164 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cotanh(z+pixel))/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1165 {
  z=1/pixel*0.91/pixel, c=pixel/(1.099,0):
  z=z-(cosxx(z*z+c)+pixel)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1166 {
  z=1/pixel*0.91/pixel, c=(1.099,0)/pixel:
  z=z-(cosxx(z*1/c+pixel))/sqr(z/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1167 {
  z=sqr(1/pixel*0.91/pixel), c=(1.099,0)/pixel:
  z=z-1/(cosxx(z/c+pixel))/sqr(z/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1168 {
  z=sqr(1/pixel*0.91/pixel), c=(1.099,0)/pixel:
  z=z-1/(sinh(z/c-pixel))/sqr(z/c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1169 {
  z=pixel/(1.099,0)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(1.099,0):
  z=pixel-(cosxx(z)-z*z+1/c+1/pixel)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1170 {
  z=pixel/(1.099,0)
  c=((1/pixel)/2)/z-2.5^(pixel+2.324)/(1.099,0):
  z=(pixel-z*z+c)/(pixel-(cosxx(z)-z*z+1/c+1/pixel))
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1171 {
  z=(4/pixel)/(1.099,0)
  c=z-2.5^(pixel-2.324)/(1.099,0):
  z=z-(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1172 {; Modified Noel Giffin formula
  z=1/pixel, zp=(0,0):
  temp=z
  z=z*z-zp
  zp=sin(-temp)
  |zp| <= 4 
  ;SOURCE: 27carr.frm
}


Carr1173 {; Ditto above
  z=1/pixel, zp=exp(1.099,0):
  temp=real(z)
  z=exp(z*z+zp)
  zp=z-(cosxx(1/temp))
  |real(z)| <=100 
  ;SOURCE: 27carr.frm
}


Carr1174 {; Modified Noel Giffin formula
  z=pixel, zp1=zp2=zp3=(0,0):
  temp=z
  z=z*z-zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1175 {; Modified Noel Giffin formula
  z=pixel, zp1=zp2=zp3=(0,0):
  temp=z
  z=imag(z*z)-zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1176 {; Ditto above
  z=1/pixel, zp=(0,0):
  temp=z
  z=z*z-cos(zp)
  zp=conj(temp)
  |zp| <=100
  ;SOURCE: 27carr.frm
}


Carr1177 {; Ditto above
  z=cosxx(1/pixel*1/pixel*1/pixel), zp=(0,0):
  temp=z
  z=z*z-cos(zp)
  zp=conj(temp)
  |zp| <=100
  ;SOURCE: 27carr.frm
}


Carr1178 {; Modified Noel Giffin formula
  z=cosxx(pixel), zp1=zp2=zp3=(0,0):
  temp=z
  z=z*z-zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1179 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=(1/pixel):
  temp=z
  z=z*1/zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1180 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=cotanh(1/-pixel):
  temp=z
  z=z*1/zp3
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1181 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=log(1/-pixel):
  temp=z
  z=z-(z*1/zp3)
  zp3=zp2
  zp2=zp1
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1182 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=log(1/-pixel):
  temp=z
  z=z-(z*1/zp3+1/pixel)
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1183 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=log(1/-pixel):
  temp=cabs(z)
  z=z-(z*1/zp3+conj(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1184 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=sqr(1/-pixel):
  temp=cabs(z-0.5)
  z=z-(z*1/zp3+conj(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1185 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=sqr(2*(1/-pixel)):
  temp=cabs(z-0.25)
  z=z-(z*1/zp3+conj(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1186 {; Modified Noel Giffin formula
  z=sqr(pixel*pixel+pixel), zp1=zp2=zp3=sqr(cosxx(1/-pixel)):
  temp=cabs(z-1.25)
  z=z-(z*1/zp3+cabs(1/pixel))
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1187 {; Modified Noel Giffin formula
  z=zp1=pixel, zp2=(1.099,0):
  temp=z
  z=z-(z*zp2-zp1)
  zp2=zp1^.5
  zp1=temp
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1188 {; Modified Noel Giffin formula
  z=zp1=pixel, zp2=(1.099,0), zp3=sqr(1/pixel*0.91/pixel):
  temp=z
  z=z-(z*zp2-zp1)
  zp2=zp1^z
  zp3=1/pixel
  zp1=(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1189 {; Modified Noel Giffin formula
  z=pixel^2.34, zp1=zp2=zp3=(1/pixel)*(1.099,0)
  c=z-(1/pixel):
  temp=cabs(z)
  z=z-(z*z+c)/(pixel-c*c)
  zp3=(zp2)
  zp2=(zp1)
  zp1=conj(temp)
  |zp1| <=100
  ;SOURCE: 27carr.frm
}


Carr1190 {
  z=1/pixel, c=cosxx(1/pixel):
  z=sqr(sqr(z*c))+c+(1.099,0)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1191 {
  z=1/pixel, c=cosxx(1/pixel):
  z=cosxx(sqr(sqr(z*1/c)))+c+(1.099,0)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1192 {; Modified (Modified Newton; Tim Wegner)
          ; from MISCBLB.FRM
  z=1/pixel, z2=z*z+c, z3=z*(cosxx(z2))
  c=cosxx(1/pixel*0.91/pixel):
  z=z-(z3+p1*z2+1)/(6*z2+4*p1*z)      
  z2=z*z/c*c
  z3=z*z2
  p2<=|z3+p1*z2+1|
  ;SOURCE: 27carr.frm
}


Carr1193 {
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=1/cosxx(sqr(pixel)):
  z=z*1/c
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1194 {; Creates VERY nice images
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=1/cosxx(sqr(pixel)):
  z=z-(z*z+c)
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1195 {
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=1/cosxx(sqr(pixel)):
  z=(z*1/c)/(pixel-c*c)
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1196 {
  z=conj(1/pixel*0.91/pixel), z2=z+conj(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z*1/c)/(pixel-c*c)
  z2=z2*1/c
  z3=z3*1/c
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1197 {
  z=conj(1/pixel*0.91/pixel), z2=z+exp(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z*1/c)
  z2=z3-(z2+z/c)
  z3=z2-(z3+z2)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1198 {
  z=conj(1/pixel*0.91/pixel), z2=z+exp(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z/c)/(pixel-c*c)
  z2=z3-(z2+z/c)
  z3=z2-(z3+z2)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1199 {
  z=exp(1/pixel*0.91/pixel), z2=z+exp(cosxx(1/pixel)), z3=z*z2
  c=(1/cosxx(sqr(pixel)))/(1.099,0):
  z=(z-(z/c)/(pixel-c*c))/1.4
  z2=z3-(z2+z/c)
  z3=z2-(z3+z2)
  |real(z)| <=100
  ;SOURCE: 27carr.frm
}


Carr1200 {
  z=1/pixel, z2=z+flip(cosxx(1/pixel)), z3=z+z2
  c=cosxx(sqr(imag(1/pixel))):
  z=z*z2*z3+c
  z2=z2^z3
  z3=z3^z2
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1201 {
  z=1/pixel, z2=z^1/z*z, z3=z^z2
  c=cosxx(1/pixel):
  z=(z*z+c)*(z*z2*z3+c)
  z2=z-(z2^z3)
  z3=z-(z3^z2)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1202 {
  z=cosxx(1/pixel), z2=z^1/z*z, z3=z^z2
  c=cabs(1/pixel):
  z=(z*1/c)/(1/z^c*1/c)
  z2=z-(z2^z3)
  z3=z-(z3^z2)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1203 {
  z=cosxx(1/pixel), z2=abs(real(z)), z3=abs(imag(z))
  c=cotanh(1/pixel):
  z=(z*1/c)/(pixel-z*z)
  z2=(1-z2^z3)
  z3=(1-z3^z2)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1204 {
  z=cosxx(1/pixel), z2=abs(real(z)), z3=abs(imag(z))
  c=cotanh(1/pixel):
  z=sqr(sqr(z*c))+c+1.224
  z2=conj(z2^z3)/c
  z3=conj(z3^z2)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1205 {
  z=cosxx(1/pixel), z2=flip(real(z)), z3=conj(imag(z))
  c=cotanh(1/pixel):
  z=sqr(sqr(z*c))+c+1.224
  z2=conj(z2^z3)/c*c
  z3=conj(z3^z2)/c
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1206 {
  z=cosxx(1/pixel), z2=flip(real(z)), z3=conj(imag(z))
  c=cotanh(1/pixel), z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
  z=(z*1/c)+z4
  z2=conj(z2^z3)/z
  z3=conj(z3^z4)/z
  z4=(1/z*z+z4)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1207 {
  z=cosxx(sqr(1/pixel)), c=cotanh(1/pixel)
  z2=conj(sqr(pixel-1))/cosxx(sqr(pixel)):
  z=z*1/c
  z2=z2*1/c
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1208 {
  z=cosxx(sqr(1/pixel)), c=cotanh(1/pixel*0.91/pixel)
  z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)):
  z=z*1/c
  z2=z2*1/z
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1209 {
  z=cosxx(sqr(1/pixel)), c=cotanh(1/pixel*0.91/pixel)
  z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)):
  z=(z-(z/c+z*1/c))/(pixel-c*c)
  z2=z*1/z2
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1210 {
  z=cosxx(sqr(1/pixel)), c=cotanh(1/pixel*0.91/pixel)
  z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)), zp1=z+c+z2:
  z=(zp1-(z/c+z*1/c))/(pixel-c*c)
  z=(z-(z/c+z*1/c))/(pixel-c*c)
  z2=z*1/z2
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1211 {
  z=cosxx(sqr(1/pixel)), c=cotanh(1/pixel*0.91/pixel)
  z2=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)), zp1=z+c+z2:
  z=(zp1-(z*1/c))/(pixel-c*c)
  z=(z-(z*1/c))/(pixel-c*c)
  z2=z*1/zp1
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1212 {
  z=cosxx(sqr(1/pixel)), c=cotanh(1/pixel*0.91/pixel)
  z1=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)), c1=conj(z+c+z1):
  z=z*1/c
  z=z1*1/c1
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1213 {
  z=cosxx(sqr(1/pixel)), c=cotanh(1/pixel*0.91/pixel)
  z1=conj(sqr(pixel-1))/cosxx(sqr(pixel+1)), c1=conj(z+c+z1):
  z=z*z+c
  z=z1*z1+c
  z=z*z+c1
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1214 {; Newton variant
  z=sinh(sqr(1/pixel)), z1=conj(sqr(pixel-1))/flip(sqr(pixel+1))
  c1=sqr(z+c+z1):
  z1=z*z*z
  c1=z1*z
  z=(3*c1+1)/(4*(z*z*z))
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1215 {; Newton variant (sort of)
  z=sinh(sqr(1/pixel)), c=cosxx(1/pixel*0.91/pixel)
  z1=conj(sqr(pixel-1))/flip(sqr(pixel+1)), c1=sqr(z+c+z1):
  z1=conj(z*z*z)
  c1=z1*z
  z=(3*c1+1)/(4*(z*z*z))
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1216 {
  z=(real(1.099,0)+1)/pixel, c=(imag(2.0,0)-1)/pixel:
  z=z/c
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1217 {
  z=(real(1.099,0)+1)/pixel, c=(imag(2.0,0)-1)/pixel:
  z=cosxx(z/c)
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1218 {
  z=(real(1.099,0)+1)/pixel, c=(imag(2.0,0)-1)/pixel:
  z=(z/c)
  z=z-(z*z+c)
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1219 {
  z=1/(pixel*pixel), c=imag(cosxx(1/pixel)):
  z=z-(pixel-z*z)/(pixel-c*c)
  c=(1+flip(imag(c)))*real(c)/2+z
  |real(z)| <=100 
  ;SOURCE: 28carr.frm
}


Carr1220 {
  z=1/(pixel*pixel*pixel)
  c=pixel-sqr(imag(cosxx(1/pixel))):
  z=c-z*pixel
  |real(z)| <=100 
  ;SOURCE: 28carr.frm
}


Carr1221 {
  z=pixel, c=pixel
  z1=cosxx(pixel), c1=cosxx(pixel):
  z=z*z1+c
  z=z1*z+c1
  |real(z)| <=100 
  ;SOURCE: 28carr.frm
}


Carr1222 {; Modified Rollo Silver formula
  z=1/pixel, zz=z*z, zzz=zz*z, z=(1.-(1.099,0))*zz+((1.099,0)*zzz):
  z=z+1/pixel
  zsq=z*1/z
  zcu=zsq*1/z
  z=(1.-(1.099,0))*zsq+(1.099,0)*1/zcu
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1223 {; Modified Rollo Silver formula
  z=(1/pixel*0.91/pixel), zz=z*z, zzz=zz*z
  z=(1.-(2.099,0))*zz+((2.099,0)*zzz):
  z=cosxx(z+1/pixel)
  zsq=z*1/z
  zcu=zsq*1/z
  z=z-((1.-(2.099,0))*zsq+(2.099,0)*1/zcu)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1224 {; Modified Rollo Silver formula
  z=(1/pixel*0.91/pixel), zz=z*z, zzz=zz*z
  z=(1.-(2.099,0))*zz+((2.099,0)*zzz):
  z=cosxx(z+1/pixel)/(z*1/z)
  zsq=z*1/z
  zcu=zsq*1/z
  z=z-((1.-(2.099,0))*zsq+(2.099,0)*1/zcu)/(pixel-z*z)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1225 {
  z=(1/pixel*0.91/pixel)
  c=(cosxx(1.7/z))/(1.099,0):
  z=cotanh(sqr(z*1/c))+(2.099,0)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1226 {
  z=(1/pixel*0.91/pixel):
  z=z^(z-1)*cosxx(z)+pixel
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1227 {
  z=(1/pixel*0.91/pixel), c=(1.7/z)/(1.099,0):
  z=c-(z^(z-1)*cosxx(z)+pixel)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1228 {
  z=(1/pixel*0.91/pixel), c=(1.7/z)/(1.099,0):
  z=z*1/c+((1.099,0)-1)*z-(1.099,0)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1229 {
  z=(1/pixel*0.91/pixel), c=tan(1.7/z)/(1.099,0):
  z=z*1/c+((1.099,0)-1)*z-(1.099,0)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1230 {
  z=(1/pixel*0.91/pixel), c=cotanh(1.7/z)/(1.099,0):
  z=z/c
  z=z*1/c+((1.099,0)-1)*z-(1.099,0)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1231 {
  z=(1/pixel*0.91/pixel), c=cotanh(1.4/z)/(2.099,0):
  z=z/c
  z=z/c+((1.099,0)-1)*z-(1.099,0)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1232 {
  z=1/sqr(pixel/(1.099,0)), c=(1.4/z)/(2.099,0):
  z=z*1/c
  z=(z-(z*z+c))+((1.099,0)-1)*z-(1.099,0)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1233 {
  z=sqr(1/pixel*1.4/pixel):
  z=(1.099,0)*z*(1-flip(z)*flip(z))
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1234 {
  z=sqr(1/pixel*1.4/pixel):
  z=(1.099,0)*z*(1-conj(z)*conj(z))
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1235 {
  z=cosxx(1/pixel*1.4/pixel), c=flip(pixel)-1:
  z=z-(sqr(pixel/z))/c-(sqr(pixel/c))
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1236 {
  z=cosxx(1/pixel*1.4/pixel), c=flip(pixel)-1:
  z=z-(sqr(pixel/z))/c-(sqr(pixel/c))
  z=z/c
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1237 {
  z=flip(1/sqr(pixel*pixel+pixel)), c=cosxx(1.6*pixel-0.5):
  c=pixel+z/c
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1238 {
  z=conj(1/sqr(pixel*pixel+pixel)), c=cosxx(1.6*pixel-0.5):
  c=pixel+z/c
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1239 {
  z=conj(1/sqr(pixel*pixel+pixel))
  c=cotanh(1.6*pixel-0.5):
  c=pixel+z/c
  z=c-z*pixel
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1240 {
  z=conj(1/sqr(pixel*pixel+pixel)), c=cotanh(1.6*pixel-0.5):
  z=pixel+z*1/c
  z=(cosxx(c-z*pixel))/0.6
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1241 {
  z=exp(1/pixel), c=z*(1/pixel):
  z=z*c-(z*cosxx(z)-z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1242 {
  z=exp(1/pixel), c=z*(1/pixel):
  z=z*c-(z*cotanh(z)-z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1243 {
  z=(exp(1/pixel*0.91/pixel)), c=z*(1/pixel):
  z=z*c-(conj(z*z)-z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1244 {
  z=(exp(1/pixel*0.91/pixel)), c=sqr(z*(1/pixel)):
  z=z*c-(conj(z*z)-z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1245 {
  z=(sqr(1/pixel*0.91/pixel))
  c=sqr(z*(1.4/pixel)):
  z=(pixel^pixel-z^z)/(pixel^pixel-c^c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1246 {
  z=cabs(1/pixel)
  c=abs(1/pixel):
  z=(exp(z)*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1247 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=(pixel)/(5.8,2.01)
  x=|real(z)|, c=cosxx(sqr(1/pixel)):
  IF (x>1)
    z=cosxx(z)+pixel
  ENDIF
  z=sqr(z*1/c)+pixel
  x=|real(z)|
  x<=4 
  ;SOURCE: 28carr.frm
}


Carr1248 (XAXIS_NOPARM) {; FractalFenderC modified
                         ; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=imag(sqr(pixel))
  x=|real(z)|, c=cosxx(sqr(pixel)):
  IF (x>1)
    z=imag(cosxx(z)+sqr(pixel))
  ENDIF
  z=sqr(z/c)+(pixel*pixel)
  x=|real(z)|
  x<=100 
  ;SOURCE: 28carr.frm
}


Carr1248x (XAXIS_NOPARM) {; Modified Lee Skinner frm.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=(pixel)/(-5.742,-0.009)
  x=|real(z*1/c)|, c=cosxx(sqr(2/pixel)):
  IF (x>1)
    z=imag(cosxx(z*z+c)+pixel)
  ENDIF
  z=sqr(z/c)+(pixel*pixel)
  x=|real(z/c)|
  x<=100 
  ;SOURCE: car1248x.frm
}


Carr1249 {
  z=(1/pixel)
  c=cosxx(sqr(1/pixel)):
  z=z-2*(c*pixel)
  z=c-2*(z*pixel)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1250 {
  z=(1/pixel)
  c=cosxx(sqr(1/pixel)):
  z=z-2*cabs(c*pixel)
  z=c-2*cabs(z*pixel)
  |real(z)| <=100
  ;SOURCE: 28carr.frm
}


Carr1251 {; Modified ZEPPO frm of Brad Beacham
  z=1/(pixel*pixel*pixel)
  c=conj(sqr(1/pixel*0.91/pixel)):
  z=conj(abs(imag(z/pixel)*c-real(z/pixel)))\
      +flip(conj(abs(real(z/pixel)-imag(z/pixel))))-(1.099,0)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1252 {; Modified ZEPPO frm of Brad Beacham
  z=1/(pixel*pixel*pixel)
  c=cotanh(sqr(1/pixel*0.91/pixel)):
  z=conj(abs(imag(z/c)*c-real(z/c)))\
      +flip(conj(abs(real(z/c)-imag(z/c))))-(1.099,0)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1253 {; Modified ZEPPO frm of Brad Beacham
  z=abs(1/(pixel*pixel*pixel))
  c=cosxx(sqr(1/pixel*0.91/pixel)):
  z=((abs(imag(z*1/c)*c-real(z/c)))\
       +flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(1.099,0))/1.34
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1254 {; Modified ZEPPO frm of Brad Beacham
  z=abs(1/(pixel*pixel*pixel))
  c=cosxx(sqr(1/pixel*0.91/pixel)):
  z=((abs(imag(z*1/c)*c-real(z/c)))\
       +flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(2.099,0))/0.34
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1255 {; Modified ZEPPO frm of Brad Beacham
  z=abs(1/(pixel*pixel*pixel))
  c=cosxx(sqr(0.56/pixel*1/pixel)):
  z=(conj(abs(imag(z*1/c)*c-real(z/c)))\
      +flip(conj(abs(real(z*1/c)-imag(z*1/c))))-(1.099,0))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1256 {
  z=sqr(1/(pixel*pixel*pixel))
  c=exp(sqr(0.56/pixel*1/pixel)):
  z=(abs(imag(conj(z*1/c)/(pixel-c*c)))*c\
       +(cabs(real(flip(z*1/c)/(pixel-c*c)))))/0.6
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1257 {
  z=sqrt(1/(pixel*pixel*pixel))
  c=sinh(sqr(0.56/pixel*1/pixel)):
  z=(abs(imag(conj(z*1/c)/(pixel-c*c)))*c\
      +(cabs(real(flip(z*1/c)/(pixel-c*c)))))/0.6
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1258 {
  z=conj(1/(pixel*pixel*pixel))
  c=cosxx(sqr(0.56/pixel*1/pixel)):
  z=(abs(imag(pixel/z))*cabs(real(pixel/c)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1259 {
  z=conj(1/(pixel*pixel*pixel))
  c=cosxx(sqr(0.56/pixel*1/pixel)):
  z=(abs(real(pixel/z))*cabs(imag(pixel/c)))/(pixel-c*1/z)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1260 {
  z=conj(1/(pixel*pixel*pixel))
  c=cosxx(sqr(0.56/pixel*1/pixel)):
  z=(z-(abs(real(z/pixel)))*z-(cabs(imag(c/pixel))))/(pixel-z/c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1261 {
  z=conj(1/(pixel*pixel*pixel))
  c=cosxx(sqr(0.56/pixel*1/pixel)):
  z=((abs(real(z-1/pixel)))*(cabs(imag(c-pixel))))/(1/pixel*1/pixel)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1262 {
  z=sinh(pixel)
  c=cosxx(pixel):
  z=(z*z+c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1263 {
  z=cotanh(pixel*pixel)
  c=cosxx(pixel):
  z=abs(conj(imag(z*z+c)))*abs(imag(cosxx(z*z*c)))+2.224
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1264 {
  z=sqr(pixel*pixel)
  c=cosxx(sqr(1/pixel*0.91/pixel)):
  z=sqr(pixel)\
      -(abs(conj(imag(pixel+z*z))))*(flip(real(abs(pixel-c*c))))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1265 {
  z=sqr(pixel*pixel)
  c=cosxx(sqr(1/pixel*0.91/pixel)):
  z=sqr(pixel)\
     -(abs(conj(imag(pixel+z*z))))*(abs(real(flip(sqr(pixel+c*c)))))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1266 {
  z=sqr(pixel*pixel)
  c=cosxx(sqr(1/pixel*0.91/pixel)):
  z=(sqr(pixel)-z)*(sqr(pixel)-c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1267 {
  z=1.5-pixel
  c=cosxx(pixel-1.5):
  z=((z-(z*z))+(c-(1/c*c))+pixel)/(z*1/c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1268 {
  z=1.5-pixel
  c=cosxx(pixel-1.5):
  z=((z-(z*z))+(c-(1/c*c))+sqr(pixel))/sqrt(z*1/c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1269 {
  z=sqr(1.5-pixel)
  c=exp(pixel-1.5):
  z=z-(conj(sqr(z-1)*conj(sqr(z-2)))*sqr(pixel/c+1))/(c-(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1270 {
  z=sqr(0.5-pixel)
  c=sqr(pixel-1.5):
  z=z-(cosxx(sqr(z-1)*cosxx(sqr(z-2)))*sqr(pixel/c+1))/(c-(pixel-c*c))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1271 {
  z=sqr(sqr(sqr(0.5-pixel)))
  c=(sqr(pixel-1.5)):
  z=((z*z+pixel)+(z*z+(z/pixel)))/(c-(pixel/c))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1272 {; Modified Tchebychev formula
  z=sqr(sqr(sqr(0.5-pixel)))
  c=z*z:
  z=z-(pixel*(c*c*c-6*c*c+9*c-2))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1273 {
  z=sqr(sqr(sqr(2.5-pixel)))
  c=z-(pixel-1.5):
  z=z*1/(c*c-1/pixel)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1274 {; Modified Newton
  z=pixel, c=(1.099,0):
  z3=z*z*z
  z4=z3*z
  z5=z4*z
  z=(3*z4+c)/(4*z3)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1275 {; Modified Newton
  z=abs(pixel), c=(1.099,0):
  z3=conj(z*z*z)
  z4=flip(z3*z)
  z5=z4*z
  z6=z5*z
  z=(3*z4+c)/(4*z3)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1276 {
  z=abs(pixel), c=cabs(sqr(flip(pixel))):
  c=c-c*1/z
  z=z-z*1/c
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1277 {
  z=abs(pixel-1), c=cabs(sqr(conj(pixel))):
  c=c-c*1/z
  z=z-z*1/c
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1278 {
  z=abs(sqr(pixel-1)), c=cabs(sqr(sqr(pixel))):
  z=2*cabs(z)-sqr(3*(z*4/c))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1279 {
  z=abs(sqr(pixel-1)), c=cabs(sqr(sqr(pixel))):
  z=(2*cabs(z)-sqr(3*(z*4/c)))/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1280 {
  z=conj(sqr(1/pixel)), c=sqr(conj(1/pixel)):
  z=z-(z^(z^(1/z))-pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1281 {
  z=conj(sqr(1/pixel)), c=sqr(conj(1/pixel)):
  z=z-(z^(z^(1/z*1/z))-pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1282 {
  z=cosxx(pixel), c=cotanh(pixel):
  z=pixel^z*1/(pixel^c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1283 {
  z=sinh(pixel), c=tanh(pixel):
  z=(pixel*pixel^z)*(1/(pixel*pixel^c))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1284 {
  z=cotanh(1/pixel-0.5), c=cosxx(pixel-1)
  z=(z-(cosxx(sqr(imag(z*z+c))))-z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1285 {
  z=cotanh(1/pixel*0.91/pixel), c=cosxx(pixel*pixel)
  z=(z-(cosxx(sqr(conj(z*z*z+c))))-z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1286 {
  z=flip(imag(pixel)), c=(1.099,0)+real(pixel):
  z=(conj(z*z)*1/c)+z*1/c
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1287 {
  z=flip(imag(pixel)), c=(1.099,0)+real(pixel):
  z=((conj(z*z)*1/c)+z*1/c)^pixel
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1288 {
  z=flip(imag(pixel)), c=(1.099,0)+real(pixel):
  z=(z-(conj(z*z*z*z)*1/c)+z*1/c)^pixel*pixel
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1289 {
  z=sqrt(pixel), c=log(pixel):
  z=((c/z)-pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1290 {
  z=sqrt(pixel), c=log(pixel):
  z=((abs(z)/cabs(c))-pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1291 {
  z=log(sqr(1/pixel)), c=1/sqr(log(pixel)):
  z=(z-(z^c^pixel))/(c*c-pixel)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1292 {
  z=log(sqr(1/pixel)), c=1/sqr(log(pixel)), c1=z/c^c/z:
  z=z*1/c1
  z=(z-(z^c^pixel))/(c*c-pixel)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1293 {
  z=log(sqr(1/pixel)), c=1/sqr(log(pixel)), c1=z/c^c/z:
  z=z/c1
  z=(z-(z^c1))/(c*c-pixel)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1294 {
  z=1/sqr(sqr(pixel)), c=sqr(sqr(cosxx(pixel))):
  z=z-(z+c-conj(imag(z*1/c)))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1295 {
  z=1/pixel, c=1/sqr(pixel):
  z=z-(z*pixel)-(c-(pixel/sqr(z*1/c)))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1296 {
  z=1/pixel, c=(1/sqr(pixel)):
  z=z-(z*pixel)-(c-(pixel/sqr(z*1/c)))
  z=z+(z*pixel)+(c+(pixel/sqr(z*1/c)))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1297 {
  z=1/pixel, c=(1/sqr(pixel)):
  z=(z-(z*pixel))/((1.099,0)-c*c)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1298 {
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+conj(imag(pixel)):
  z=(z*z+pixel)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1299 {
  z=real(pixel)+flip(imag(pixel))
  c=real(pixel)+conj(imag(pixel)):
  z=((z*z+pixel*pixel)/(pixel*pixel+z))
  |real(z)| <=100
  ;SOURCE: 29carr.frm
}


Carr1300 {; based on formulas by Brad Beacham and Gordon Lamb
  z=real(1/pixel)+flip(imag(1/pixel))
  c=real(pixel)+flip(imag(pixel))
  count=z/c, shift=(1.099,0):
  a=(z^2.71828182845905)*(count<=shift)
  b=(z*1/c)*(shift<count)
  count=count+1/pixel
  z=z-(a+b+c)/(pixel-c*c)
  |real(z)| <=100  
  ;SOURCE: 30carr.frm
}


Carr1301 {; based on formulas by Brad Beacham and Gordon Lamb
  z=real(1/pixel)+flip(imag(1/pixel))
  c=real(pixel)+flip(imag(pixel))
  count=z/c, shift=(1.099,0):
  a=(z^2.71828182845905)*(count<=shift)
  b=(z*1/c)*(shift<count)
  count=count+sqr(1/pixel)
  z=z-((a+b)*1/c)/(pixel-c*c)
  |real(z)| <=100  
  ;SOURCE: 30carr.frm
}


Carr1302 {; based on formulas by Brad Beacham and Gordon Lamb
  z=conj(real(1/pixel))+flip(imag(1/pixel))
  c=conj(real(pixel))+flip(imag(pixel))
  count=z*1/c, shift=(1.099,0):
  a=(z^2.71828182845905)*(count<=shift)
  b=(z*1/c)*(shift<count)
  count=count/(cosxx(1/pixel))
  z=z-((a+b)*1/c)/(pixel-c*c)
  |real(z)| <=100  
  ;SOURCE: 30carr.frm
}


Carr1303 {; based on formulas by Brad Beacham and Gordon Lamb
  z=conj(real(pixel))+flip(imag(pixel))
  c=conj(real(1/pixel))+flip(imag(1/pixel))
  count=abs(z*1/c), shift=1/(2.099,0):
  a=(z^2.71828182845905)*(count<=shift)
  b=(z*1/c)*(shift<count)
  count=count/(cosxx(sqr(2.5/pixel)))
  z=(z-sqr(a+b)^c)/(pixel*pixel+c)
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100  
  ;SOURCE: 30carr.frm
}


Carr1304 {
  z=sqrt(5+1.224)*cosxx(pixel), c=sqrt(pixel)^pixel:
  z=cosxx(z+2)+(z/c)/(z-2)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1305 {; Modified Cubic_alt.
  z=sqrt(pixel)*cosxx(pixel):
  z=z^3+z^2
  |z-pixel|<=100
  ;SOURCE: 30carr.frm
}


Carr1306 {
  z=sqr(pixel)*cosxx(pixel), c=1/sqr(pixel)^pixel:
  z=(z^3+z^4+z^5+sqr(z^3))
  |z-pixel|<=100
  ;SOURCE: 30carr.frm
}


Carr1307 {
  z=sqr(1/pixel)*cotanh(1/pixel), c=1/sqr(pixel)^pixel:
  z=(pixel*pixel+z)-(z^3+z^4+z^5+sqr(z^3))
  |z-pixel|<=100
  ;SOURCE: 30carr.frm
}


Carr1308 {
  z=sqr(1/pixel)*cotanh(1/pixel), c=1/sqr(pixel)^pixel:
  z=((pixel*pixel+z)-cosxx(z^3+z^4+z^5+sqr(z^3)))/(pixel-c*c)
  |z-pixel|<=100
  ;SOURCE: 30carr.frm
}


Carr1309 {
  z=sqr(1/pixel)*cotanh(1/pixel), c=1/sqr(pixel)^pixel+z:
  z=((z+pixel)+(z^2+pixel)+(z^4+pixel))/((z*1/c)+pixel)
  |z-pixel|<=100
  ;SOURCE: 30carr.frm
}


Carr1310 {; Cardiod modified
  z=cosxx(1/pixel)*imag(1/pixel)
  x=flip(imag(1/pixel)), y=conj(real(1/pixel))
  c=x*(cosh(y)+x*sinh(y)):
  z=(pixel-z*z)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1311 {; Cardiod modified
  z=cosxx(1/pixel)*imag(1/pixel)
  x=flip(imag(1/pixel)), y=conj(real(1/pixel))
  c=x*(cosh(y)+x*sinh(y)):
  z=1/sqr(z*z+pixel)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1312 {; Creates Faceted Glass with "G"
  z=pixel, c=c1-pixel
  y=pixel/z-(1.099,0)
  c1=conj(imag(pixel))+y:
  z=z-(pixel*(pixel^z*1/c))
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}


Carr1313 {
  z=1/pixel, c=c1^2+c2^2, c2=pixel/z-(1.099,0)
  c1=conj(imag(pixel))+c2:
  z=z*z+c+sin(z)
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}


Carr1313A {; Rearrangement of Carr1313, with no ghosting
  z=1/pixel, c2=pixel/z-(1.099,0), c1=conj(imag(pixel))+c2
  c=c1^2+c2^2:
  z=z*z+c+sin(z)
  |real(z)| <= 100
  ;SOURCE: form2.frm
}


Carr1314 {; Creates Faceted Glass with "G"
  z=1/pixel, c=c1^2+c2^2
  c2=pixel*pixel/z-(1.099,0)
  c1=conj(imag(pixel*pixel))+c2:
  z=z*z+c+sin(z)
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}


Carr1315 {; Creates Faceted Glass with "G".
  z=1/pixel, c=c1^2+c2^2
  c2=pixel*pixel/z-pixel
  c1=conj(imag(pixel*pixel))+c2:
  z=z*z+c+sin(z*z)
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}


Carr1316 {; Creates Faceted Glass with "G".
  z=1/pixel, c=c1^2+c2^2
  c2=pixel*pixel/z-pixel
  c1=conj(imag(pixel*pixel))+c2:
  z=z-(pixel*pixel+z)/(pixel-c*c)
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}


Carr1317 {; Creates Faceted Glass with "G".
  z=1/pixel, c=(c1/c2^c2/c1)
  c2=sqr(z-1)
  c1=1/(pixel*pixel*pixel)+c2:
  z=(pixel*pixel+z)/(pixel-c*c)
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}


Carr1318 {; Creates Faceted Glass with "G".
  z=1/pixel, c=(c1/c2^c2/c1)
  c2=sqr(z-1)
  c1=1/(pixel*pixel*pixel)+c2:
  z=(pixel*pixel+z)/c-(pixel-c*c)
  |real(z)|<=100
  ;SOURCE: 30carr.frm
}


Carr1319 {
  z=1/pixel, c=(c1/c2^c2/c1)
  c2=sqr(z*z-1)
  c1=1/(pixel*pixel*pixel)+c2:
  z=z-(c*1/z)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1320 {
  z=1/pixel, c=c1/c2
  c2=pixel+z
  c1=pixel+c2:
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1321 {
  z=1/pixel, c=c1/c2
  c2=pixel+z
  c1=pixel+c2:
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1322 {
  z=4/pixel, c=pixel*2/z-c1/c2
  c2=pixel+z
  c1=pixel+c2:
  z=z*1/c+1/pixel
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1323 {
  z=4/pixel, c=pixel*2/z-c1/c2
  c2=pixel+z
  c1=pixel+c2:
  z=(pixel-z*1/c)/(pixel*pixel+1/z^c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1324 {
  z=4/pixel, c=pixel*2/z-c1/c2
  c2=1.75*(z*pixel)
  c1=0.5/pixel+c2:
  z=(z/c)/(pixel*pixel+1/z^c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1325 {
  z=4/pixel, c2=1.75*(z*pixel)
  c1=0.5/pixel+c2, c=pixel*2/z-c1/c2:
  z=z-(z/c)/(pixel*pixel+1/z^c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1326 {
  z=4/pixel, c2=1.75*(z*pixel)
  c1=0.5/pixel+c2, c=pixel*2/z-c1/c2:
  z=z*1/c
  z=(z-(z+c+1/pixel))*(z+(z-c-1/pixel))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1327 {
  z=4/pixel, c2=1.75*(z*pixel)
  c1=0.5/pixel+c2, c=pixel*2/z-c1/c2:
  z=z/c+1/pixel
  z=(z-(z+c+1/pixel))*(z+(z-c-1/pixel))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1328 {
  c=z*z, z=1/pixel:
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1329 {
  c=z*z*z, z=1/pixel:
  z=(z*1/c)/(pixel-c*c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1330 {
  c=z*z, z=1/pixel:
  z=(z*1/c)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1331 {
  c=z*z+pixel, z=1/pixel*0.91/pixel:
  z=sqr(z*1/c)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1332 {
  c=conj(imag(pixel))/z-2.5^(pixel+2.324)/(5/pixel)
  z=(1/pixel^pixel+2.3):
  z=z*1/c
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1333 {
  c=z+1/z+1/pixel, z=real(pixel)+1.5:
  z=(z*1/c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1334 {
  c=z+1/z+1/pixel, z=real(pixel)+1.5:
  z=(z*1/c)/(z*z+c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1335 {
  c=z+1/z+1/pixel, z=imag(pixel)+1.5:
  z=(z*1/c)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1336 {
  z=imag(pixel)+1.5, c=z+1/z+1/pixel:
  z=sqr(z*1/c)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1337 {
  z=1/pixel, c=1/pixel:
  z=(pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1338 {
  z=1/pixel, c=1/pixel:
  z=z-(pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1339 {
  z=sqr(pixel), c=sqr(1/pixel):
  z=z-(pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1340 {
  z=sqr(pixel), c=sqr(1/pixel):
  z=z-cosxx(pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1341 {
  z=sqr(pixel), c=sqr(1/pixel):
  z=z-cotanh(pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1342 {
  z=sqr(pixel), c=sqr(1/pixel):
  z=z-(pixel*pixel-z*z)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1343 {
  z=sqr(pixel), c=sqr(1.5/pixel):
  z=z-(pixel-z*z*z+1/pixel)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1344 {
  z=cosxx(1/pixel), z2=flip(real(z)), z3=conj(imag(z))
  c=cotanh(1/pixel), z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
  z=(z*1/c)+z4
  z2=conj(z2^z3)/z
  z3=conj(z3^z4)/z
  z4=(1/z*z+z4)/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1345 {
  z=cosxx(1/pixel), c=cotanh(1/pixel)
  z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
  z=((z*1/c)+z4)/(pixel-z*z+c)
  z4=(1/z*z+z4)/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1346 {
  z=cosxx(1/pixel*0.91/pixel), c=cotanh(1/pixel)
  z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
  z=((z*1/c)+z4)/(pixel-z*z+c)
  z4=(1/z*z+1/pixel)/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1347 {
  z=cosxx(1/pixel*0.91/pixel)
  c=cotanh(pixel*pixel)
  z4=conj(sqr(pixel))/cosxx(sqr(pixel)):
  z=((z*1/c)+z4)/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1348 {
  z=1/sqr(pixel*pixel)
  c=sqr(pixel)+log(sqrt(z)):
  z=z-(z*1/c)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1349 {
  z=sqr(pixel*pixel)
  c=sqr(pixel)+log(cosxx(z))
  c1=log(sqrt(sqr(pixel*pixel)))+c:
  z=z-(z/c1)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1350 {
  z=pixel
  c=1/pixel
  c1=(z-1)+(c-1):
  z=z-(z*1/c1)/(pixel-(z*z+c))
  |real(z)| <=100
  ;SOURCE: 30carr.frm
}


Carr1351 {
  z=pixel
  c1=(z-1)/(1/pixel)
  c=(c1)/z:
  z=((z*1/c)/z-(pixel-z*z))
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1352 {
  z=1/pixel
  c1=z/pixel*pixel
  c=(c1)*z:
  z=z-(z*1/c)/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1353 {
  z=1/pixel*0.91/pixel
  c1=(1.099,0)
  c=z*sqr(c1):
  z=cosxx(z)+c+sin(z/c1)+cosxx(1/pixel)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1354 {
  z=1/pixel*0.91/pixel
  c1=(1.099,0)
  c=sqr(c1)*pixel:
  z=z-(cosxx(z)+c+sin(z/c1)+cosxx(1/pixel))
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1355 {; Carr-brot 
  z=log(3.1416)+1/pixel:
  z=z-(sqr(z)+pixel)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1356 {
  z=1/pixel, c=cosxx(pixel):
  z=(1/flip(sqr(z)+(1.099,0)))/(z*z*z*z+c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1357 {
  z=pixel, z1=4/sqr(sqr(sqr(1.099,0)))
  c=cosxx(pixel)+sqr(cotanh(z1)):
  z=z-(z*1/c)+cosxx(1/pixel)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1358 {
  z=pixel, z1=4/sqr(sqr(sqr(1.099,0)))
  c=cosxx(pixel)+sqr(cotanh(z1)):
  z=(z-(z*1/c)+cosxx(1/pixel))/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1359 {
  z=flip(imag(pixel*pixel)), z1=sqr(sqr(sqr(0.3,0.6)))
  c=pixel+sqr(cotanh(z^z1+1)):
  z=(z-(z*1/c)+sqr(1/pixel))/(pixel-z*z+c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1360 {; Modified Peter Jack (Newton variation) frm.
  z=pixel:
  z2=cotanh(z*z)
  z3=cotanh(z*z*z)
  z=cotanh(z-((z3-z*.25-1.25)/((z2*3-.25)+P1)))
  |(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}


Carr1361 {; Modified Peter Jack (Newton variation) frm
  z=pixel:
  z2=z-(z*z)
  z3=z-(z*z*z)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: form2.frm
}


Carr1362 {; Modified Peter Jack (Newton variation) frm
  z=pixel, c=1/pixel:
  z2=z-(z*z)/(pixel-c*c)
  z3=z-(z*z*z)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}


Carr1363 {; Modified Peter Jack (Newton variation) frm
  z=pixel, c=1/pixel:
  z2=z-(z*z)/(pixel-c*c)
  z3=z-(z*z*z)/(pixel-c*c)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}


Carr1364 {; Modified Peter Jack (Newton variation) frm
  z=imag(pixel), c=1/pixel*0.91/pixel:
  z2=z-(z*z)/(pixel-c*c)
  z3=z-(z*z*z)/(pixel-c*c)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}


Carr1365 {; Modified Peter Jack (Newton variation) frm
  z=abs(pixel), c=sqr(1/pixel*0.91/pixel):
  z2=z-(z*z)/(pixel-c*c)
  z3=z-(z*z*z)/(pixel-c*c)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}


Carr1366 {; Modified Peter Jack (Newton variation) frm
  z=abs(pixel), c=sqr(1/pixel*0.91/pixel):
  z2=z-(z*z)/sinh(pixel-z*z+c)
  z3=z-(z*z*z)/sinh(pixel-z*z+c)
  z=(z-((z3-z*.25-1.25)/((z2*3-.25)+2.224)))
  |real(z3-z*.25-1.25)| >= 0.000001
  ;SOURCE: 31carr.frm
}


Carr1367 (XAXIS) {; Modified Scott LPS
  z=pixel, c=1/((1.099,0)+3):
  z=log(z)*sin(z)+c
  |z|<=100
  ;SOURCE: 31carr.frm
}


Carr1368 {
  c=1/pixel, z=((1/pixel)^2.12)+1.25:
  z=(z*z)+c
  |z|<=4
  ;SOURCE: 31carr.frm
}


Carr1369 {
  c=1/pixel, z=((1/pixel)^2.12)+1.25:
  z=z-(z*z+c+sinh(z))/(pixel-c*c)
  |z|<=4
  ;SOURCE: 31carr.frm
}


Carr1370 (XYAXIS) {; Jm Richard-Collard frm. modified.
  z=pixel^2.132, c=z-(1-pixel)/2.5:
  sq=z*z, z=(sq*sin(sq)+sq)+c
  |z|<=50
  ;SOURCE: 31carr.frm
}


Carr1371 {; Julia
  z=pixel, c=(-0.399,-1.1)^1.62+0.0224:
  z=z*z+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1372 {; Julia
  z=pixel, c=-0.724^1.59+0.0224:
  z=z*z+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1373 {; Julia
  z=pixel, c=-0.784^1.2786+0.0229:
  z=z*z+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1374 {; Julia
  z=pixel, c=(-0.784^1.2786+0.0229)+(1.099,0):
  z=z*z+flip(c-1.2)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1375 {; Julia
  z=pixel, c=(-0.784^1.2786+0.0229)+(1.099,0):
  z=z*z+log(c+0.8)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1376 {; Julia Serpent
  z=pixel, c=(-0.74543^1.2796+0.0799)+(-0.3,0.09586):
  z=conj(z*z)+conj(c+0.999978)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1377 {; Julia
  z=pixel, c=(-0.76943^1.27996+0.0799)+(-0.34,0.8):
  z=conj(z*z)+conj(c+0.9899978)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1378 {; Julia
  z=pixel, c=1/pixel+(1.099,0):
  z=(z*z)+(c-1.5)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1379 {; Julia
  z=pixel, c=(0.35/pixel)-0.2998:
  z=(z*z)+c
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1380 {
  z=pixel, c=(-0.5,0.042089):
  z=z^2+(c-0.25)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1381 {
  z=pixel, c=(-0.5,0.042089):
  z=(z^2)-(c+0.1745)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1382 {; SpNewton modified
  z=sqr(sqr(pixel)):
  z1=(z*z-1)*(z*z+0.16)
  z2=4*z^3-1.68*z
  z=z-z1/z2
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1383 {; SpNewton modified
  z=sqr(sqr(pixel)):
  z1=(z*z-0.1/z)*(z*z+0.16)
  z2=4*z^3-1.68*z
  z=z-z1/z2
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1384 {; Julia
  z=pixel:
  z=z^2*z+(-0.7456,0.2)+0.18890342
  |z| <=4
  ;SOURCE: 31carr.frm
}


Carr1385 {; Frm by Paul J. Horn, JuliCon07
  z=pixel:
  z=sqr(sqr(z))+conj(-1.2199085)
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1386 {
  z=pixel, c=z^(z-1):
  z=(z-z*1/(cotanh(c)/cosh(c)))/(pixel-z*z+c)
  z=z-z*1/(cotanh(c)/cosh(c))
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1387 (XAXIS_NOPARM) {; FractalFenderC Modified
     ; Edited for Fractint v. 20 By George Martin, 10/98
  z=0.224, x=|z|, c=z*1/pixel:
  IF (x>1)
    z=cosh(z)+c
  ENDIF
  z=sqr(z)+pixel, x=|z|
  x<=4
  ;SOURCE: 31carr.frm
}


Carr1388 (XAXIS_NOPARM) {; FractalFenderC Modified
     ; Edited for Fractint v. 20 By George Martin, 10/98
  z=cotanh(pixel*pixel), x=|real(z)|, c=z/pixel^z:
  IF (x>1)
    z=z-cotanh(sqr(z/c))
  ENDIF
  z=z-(z*1/c)/(pixel*pixel+z)
  x=|z|
  x<=4
  ;SOURCE: 31carr.frm
}


Carr1389 {; Julia
  z=pixel-0.009:
  z=sqr(z)+sqrt(3.1416)-1.505809882
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1390 {; Creates a Leopard Spotted Julia?
  z = pixel - 0.009:
  z = sqr(z) + sqrt(0.3,0.6) - 1.32
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1391 {; Julia?-Mandel?-Neither?
  z=pixel-0.009:
  z=sqr(z)+sqrt(z)-1
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1392 {
  z=pixel-0.009:
  z=z^2.099+sqrt(z)-1.1528063
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1393 {; Julia
  z=pixel-0.009:
  z=(z^2)+sqrt(0.6,0.3)-1.9904
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1394 {; Julia
  z=pixel-0.019:
  z=(z^2.09905)+sqrt(4.29908,-1.2)-3.288955
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1395 {
  z=pixel-0.009, c=sqrt(0.3,0.6)-1.32:
  z=(z*z+c)/(pixel*pixel+z)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1396 {
  z=pixel-0.009, c=sqrt(0.3,0.6)-1.32:
  z=(z*z+c)/(pixel*pixel+z)
  z=(z*1/c)
  |real(z)| <=100
  ;SOURCE: 31carr.frm
}


Carr1397 {
  z=sqrt(1/pixel)/pixel, c=sqrt(0.3,0.6)-1.32:
  z=z-(z^pixel+c)+1/c
  |real(z)| <=100 
  ;SOURCE: 31carr.frm
}


Carr1398 {
  z=sqrt(1/pixel)/pixel, c=sqrt(0.3,0.6)-1.32:
  z=(z*z+c)/(z*1/c)
  |real(z)| <=100 
  ;SOURCE: 31carr.frm
}


Carr1399 {; Mark Peterson; Mod. by T.J.E. Reed; Modified 
  z=pixel:
  z=tan(z*z)+(-0.74543, 0.2)+0.02    
  |z| <= 4
  ;SOURCE: 31carr.frm
}


Carr1400 {
  z=pixel/0.999, c=sqrt(flip(pixel)):
  z=sqr(conj(z))+c-1.5
  |z|<=4
  ;SOURCE: 32carr.frm
}


Carr1401 {
  z=pixel/0.999, c=sqrt(1/(1/(1/(1/pixel)))):
  z=z^2.09+c-0.5
  |z|<=4
  ;SOURCE: 32carr.frm
}


Carr1402 {; Julia (I think??)
  z=pixel, c=sqrt(1/(1/(1/(5/pixel)))):
  z=z*z+(c-1)
  |z|<=4
  ;SOURCE: 32carr.frm
}


Carr1403 {; Modified T.J.E. Reed formula;Julia
  c=z=pixel:   
  z=z*z+c   
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/3+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1404 {; Modified T.J.E. Reed formula; Julia
  c=z=pixel:   
  z=z*z+c   
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/6+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1405 {; Modified T.J.E. Reed formula; Julia
  c=z=pixel:   
  z=z*z+c   
  c=(1+flip(imag(sqrt(flip(c)))))*real(sqrt(conj(c)))/6+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1406 {; Julia (?) that produces math errors.
          ; Modified T.J.E. Reed formula
  c=z=pixel/0.995:   
  z=z*z+c   
  c=(0.5+flip(imag(sqrt(flip(c)))))*real(sqrt(conj(c)))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1407 {; Ditto above
  z=pixel/0.995, c=(-0.74543,0.2):   
  z=z*z+c   
  c=(0.5+flip(imag(sinh(sqrt(flip(c))))))*real(sqrt(conj(tan(c))))/7+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1408 {; Ditto above
  z=pixel/0.995, c=(-1.09989,0.595927):   
  z=z*z+c   
  c=(0.5+flip(imag(sinh(sqrt(flip(c))))))*real(sqrt(conj(tan(c))))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1409 {; Ditto above.
  z=pixel/0.995, c=1/pixel:   
  z=z*z+c   
  c=(1+flip(imag(cosh(sqrt(flip(c))))))*real(sqrt(conj(tanh(c))))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1410 {; Ditto above
  z=pixel-1, c=sqr(1/pixel):   
  z=z*z+(0.3,0.6)   
  c=(1+flip(imag(cosh(sqrt(conj(c))))))*real(sqrt(conj(tanh(c))))/7.9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1411 {; Ditto above.
  z=pixel, c=sqrt(sqr(z*z*z*z)):   
  z=z*z+c   
  c=(1+flip(imag(cosh(sqrt(conj(c))))))*real(sqrt(conj(tanh(c))))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1412 {; Ditto above.
  z=pixel, c=(-0.7549,0.209981):   
  z=z*z+c   
  c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/9+tan(z-0.2)    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1413 {; Ditto above.
  z=pixel, c=(-0.745,0.213):   
  z=z^2+c
  c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1414 {; Ditto above.
  z=tan(pixel), c=conj(-0.89895,0.377913):   
  z=z^2+c
  c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1415 {; Ditto above.
  z=tan(pixel), c=asinh(-0.89895,0.377913):   
  z=z^2+c
  c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/6+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1416 {; Ditto above.
  z=tan(pixel), c=1.224*(-0.89895,0.577913):   
  z=z^2+c
  c=(1+imag(conj(sqrt(c))))*(real(conj(sqrt(c))))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1417 {; Ditto above.
  z=tan(cosxx(pixel)), c=1.224*(1.2,-0.09):   
  z=z^2+c
  c=cotan(1+imag(conj(sqrt(c))))*tan(real(conj(sqrt(c))))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1418 {; Ditto above.
  z=tan(cosxx(pixel)), c=1.224*(abs(imag(pixel))):   
  z=z^2+sin(pixel)
  c=cotan(1+imag(1/conj(sqrt(c))))*(real(conj(sqrt(c))))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1419 {; Julia frm ?
  z=pixel, c=1/pixel:   
  z=z*z+(-0.7564,0.21978)+sin(sqrt(z-0.51))
  c=conj(real(sqrt(c)))*flip(imag(sqrt(c)))/9+z    
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1420 {; Julia ?
  z=cosxx(pixel):   
  z=((z*z)+0.5)+(1/log(real(pixel*pixel-1.5))-1.55)
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1421 {; Modified BUILTN.FRM Julia
  z=pixel  
  c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2) ):
  z=sqr(z*z)+c
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1422 {; Modified BUILTN.FRM Julia
  z=pixel  
  c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2) ):
  z=(z*z)+c
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z| <= 4
  ;SOURCE: 32carr.frm
}


Carr1423 {; Modified BUILTN.FRM Julia
  z=pixel  
  c=((1.099,0)*(|(-0.7456,0.42362)|<=0)+sqr(-0.7456,0.42362) ):
  z=(z*z)+(0.4,0.35)
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1424 {; Modified BUILTN.FRM Julia
  z=((1-pixel)/2.5^0.75)  
  c=((1.099,0)*(|(-0.7456,0.42362)|<=0)+sqr(-0.7456,0.42362) ):
  z=(z*z)+(-1.76,-0.014)
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1425 {; Modified BUILTN.FRM Manowar
  z=pixel+(1.099,0), z1=z, c=pixel
  t=(4*(real(1/pixel)<=0)+real(1/pixel)*(0<1/pixel)):
  oldz=z
  z=sqr(oldz)+z1+c
  z1=oldz
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z| <= t
  ;SOURCE: 32carr.frm
}


Carr1426 {; Modified BUILTN.FRM Manowar
  z=cotanh(pixel)+(1.099,0), z1=z, c=sin(pixel)
  t=(4*(real(pixel)<=0)+real(pixel)*(0<pixel)):
  oldz=z
  z=sqr(oldz)+z1+c
  z1=oldz
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z| <= t
  ;SOURCE: 32carr.frm
}


Carr1427 {; Modified BUILTN.FRM Manowar
  z=cotan(pixel)+(1/pixel), z1=z, c=sin(pixel)
  t=(4*(real(pixel)<=0)+real(pixel)*(0<pixel)):
  oldz=z
  z=sqr(oldz)+z1+c
  z1=oldz
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z| <= t
  ;SOURCE: 32carr.frm
}


Carr1428 {; Julia,Modified BUILTN.FRM Julia
  z=pixel 
  c=((0.3,0.6)*(|(1/pixel)|<=0)+(1/pixel))
  t=(4*(real(1/pixel)<=0)+real(1/pixel)*(0<1/pixel)):
  z=sqr(z)+c
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z 
  |z|<=t
  ;SOURCE: 32carr.frm
}


Carr1429 {; Julia
  z=pixel, c=(-0.7456,0.2):
  z=z*z+c
  c=(1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1430 {; "Dog Bone" Julia
  z=pixel, c=1/(-0.7456,0.2):
  z=z*z+c
  c=tan((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1431 {; Modified Julzpower from BUILTN.FRM
  z=pixel+(p1), c=((0.3,0.6)*(|p1|<=0)+p1)
  m=(2*(|p2|<=0)+p2):
  z=z^real(m)+c
  c=tan((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z|<=4
  ;SOURCE: 32carr.frm
}


Carr1432 {; Julia
  z=pixel+(1.099,0), c=(-0.7456,0.2):
  z=z*z+c
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1433 {; Julia
  z=pixel+(1.099,0), c =(-0.7456,0.2):
  z=sqr(z)+c
  z=z+c/4
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1434 {; Julia
  z=sqr(sqr((1-pixel)/2.5^0.75)), c=(-0.7456,0.212):
  z=z*z+c
  z=z+c/4
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1435 {; Julia
  z=sqr(sqr(sqr((1-pixel)/2.5^0.75))), c=(-0.7456,0.212):
  z=z*z+c
  z=z+c/4
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1436 {; Interesting Julia manipulation.
  z=pixel
  c=0.25*(-0.7456,0.2):
  z=sqr(z)+c*4
  z=z+c/1.3
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1437 {; What-ja-macallit ?
  z=pixel
  c=(0.5/pixel)-(-0.7456,0.2):
  z=sqr(z)+(c-1.2)
  z=z+c/2
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1438 {; Seems to make spiders, julias & mandels.
  z=pixel
  c=(0.3/pixel)-(0.342,1.97):
  z=sqr(z)+1/log(c)
  z=z+c/2
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1439 {
  z=1-(1/pixel)^3.13
  c=tan(abs(pixel)):
  z=sqr(z)+(c^(1/-pixel))
  z=z+c/2
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1440 {; Julia
  z=pixel-(1/pixel)^4.13
  c=(-0.7456,0.2):
  z=sqr(z)+c
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  z=z+c/2
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1441 {; Julia
  z=conj(pixel)-(1/pixel)^4.13
  c=(-0.7456,0.2):
  z=sqr(z)+c
  c=((1+sin(imag(sqrt(-c))))*sin(real(sqrt(-c)))/9+z)
  z=z+c/2
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1442 {; Fractal Fender C Modified.
     ; Edited for Fracint v. 20 by George Martin, 10/98
  z=0.224, x=|z|, c=(-0.7456,0.2):
  IF (x>1)
    z=cosh(z)+c
  ENDIF
  z=sqr(z)+pixel
  x=|z|
  |z|<=4
  ;SOURCE: 32carr.frm
}


Carr1443 {; Fractal Fender C Modified.
     ; Edited for Fracint v. 20 by George Martin, 10/98
  z=0.224, x=|z|, c=(-0.7456,0.2):
  IF (x>1)
    z=cosh(z)+c
  ENDIF
  z=sqr(z)+pixel
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  x=|z|
  |z|<=4
  ;SOURCE: 32carr.frm
}


Carr1444 {; Pseudo Spider?
  z=sin(pixel+1), c=z-(conj(1/pixel^2*pixel)):
  z=z*z+c
  c=(z/1.05)+c/2
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1445 {; Spider variant.
  z=sin(pixel+1), c=(-0.7456,0.4):
  z=z*z+c
  c=(z/1.0489)+c/2
  z=1.34*(-z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1446 {
  z=sin(pixel+1), c=pixel:
  z=z*z+c-1.49
  c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1447 {
  z=sin(pixel*pixel+1), c=pixel:
  z=z*z+c-1.49
  c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1448 {
  z=cotan(pixel*pixel+1), c=tan(pixel):
  z=z*z+c-1.49
  c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1449 {
  z=cotan(pixel*pixel+1), c=sqr(1/pixel*0.91/pixel):
  z=z*z+c-1.49
  c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1450 {
  z=conj(pixel*pixel+1), c=sqr(flip(0.4,0.35)):
  z=(z*z)+c-1.49
  c=((4-flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 32carr.frm
}


Carr1451 {; Creates Julia.
  z=cotan(pixel*pixel+1), c=sqr(1/pixel*0.91/pixel):
  z=(z*z)+c-1.49
  c=1/z*z+1/pixel
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1452 {
  z=flip(pixel*pixel), c=conj(pixel*pixel):
  z=(z*z)+c-1.49
  c=1/z*z+1/pixel
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1453 {; Modified ManP1IMJ
  z=pixel, c=(0.3,0.6):
  z=sqr(z)
  z=z+c+imag(z)
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1454 {; Modified ManP1IMJ
  z=flip(pixel), c=(0.3,0.6):
  z=sqr(z)
  z=z+c+real(z)
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1455 {; Modified ManP1IMJ
  z=pixel, c=sqr(0.3,0.6):
  z=z*z
  z=z+c+sin(z)
  c=z+c/2
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1456 {; Modified ManP1IMJ
  z=pixel, c=(-0.7456,0.2):
  z=z*z
  z=z+c+sin(z)
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1457 {; Julia
  z=(1-pixel)/2^pixel, c=pixel:
  z=sqr(z)
  z=z+sin(z)+c
  c=z+c/2
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1458 {; Julia
  z=pixel, c=(0.9/-3.48)-0.88/pixel:
  z=z*z+c
  c=z+c/2.125
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z|<=4
  ;SOURCE: 33carr.frm
}


Carr1459 {; Julia
  z=cosxx(pixel), c=(-0.6456,0.33):
  z=z*z+(c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1460 {
  z=pixel, c=sinh(0.3,0.6):
  z=conj(sqr(z)+c)*conj(z+0.5)*conj(c-0.95)
  c=z+c/2.125
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1461 {
  z=pixel, c=tanh(pixel):
  z=conj(sqr(z)+c)*conj(z+0.75)*conj(c-0.95)
  c=z+c/2.125
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1462 {
  z=pixel, c=cosh(pixel):
  z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95)
  c=z+c/2.125
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1463 {
  z=pixel, c=cosh(pixel):
  z=conj(sqr(z)+c)*conj(z+1)*conj(c-0.95)
  c=z+c/6.125
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1464 {; Faceted Glass modified Mandel
  z=c, c=pixel:
  z=z*z+c
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1465 {; Julia
  z=pixel:
  z=z*z+(-0.7456,0.2)
  |cosxx(z)| <= 4 || |conj(z)| <= 4
  ;SOURCE: 33carr.frm
}


Carr1466 {; Faceted Glass InvMandel
  z=c, c=1/pixel:
  z=z*z+c
  |cabs(z)| <= 4 || |asin(z)| <= 4 || |sin(z)| <=4
  ;SOURCE: 33carr.frm
}


Carr1467 {; ConjMandel creates Faceted Glass
  z=c, c=conj(pixel):
  z=z*z+c
  |cabs(z)| <= 4 || |asin(z)| <= 4 || |sin(z)| <=4
  ;SOURCE: 33carr.frm
}


Carr1468 {; TanMandel creates Faceted Glass
  z=c, c=tan(pixel):
  z=z*z+c
  |cabs(z)| <= 4 || |cosxx(z)| <= 4 || |sinh(z)| <=4
  ;SOURCE: 33carr.frm
}


Carr1469 {; Julia
  z=pixel+flip(-0.5), c=(-1.7621,-0.0141):
  z=(z*z)+(c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1470 {; Same as 1469 but "cart before the horse".
  z=z1, z1=pixel+flip(-0.5), c=(-1.7621,-0.0141):
  z=(z*z)+(c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1471 {; Faceted Glass Julia
  z=z1, z1=conj(pixel*pixel)+flip(-0.5), c=(-1.7621,-0.2141):
  z=(z*z)+(c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1471-LS {; Julia modified by Lee Skinner
  z1=conj(pixel*pixel)+flip(-0.5), c=(-1.7621,-0.2141), z=z1:
  z=(z*z)+(c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: carr1471.frm
}


Carr1472 {; Faceted Glass Julia
  z=z1, z1=cosxx(pixel*pixel)+flip(-0.5), c=(-1.7621,-0.2141):
  z=(z*z)+(c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1473 {; Faceted Glass Julia
  z=z1, z1=sqr(1/pixel*1/pixel*pixel)+flip(-0.5), c=(1.1,0.9):
  z=(z*z)+(c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1474 {; BatMandelbrot, Faceted Glass
  z=c, c=(conj(1/pixel)^2.32)-1.25:
  z=z*z+c
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1474-LS {; BatMandelbrot modified by Lee Skinner
  z=(conj(1/pixel)^2.32)-1.25, c=z:
  z=z*z+c
  |z| <=4
  ;SOURCE: carr1474.frm
}


Carr1475 {; Julia
  z=(flip(1/pixel)^2.32)-1.25, c=z:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1476 {; Julia??
  z=(cosxx(pixel)^2.32)-1.25, c=conj(z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1477 {; ??-Julia-??
  z=tan(1/exp(pixel)^2.32)-1.25, c=conj(z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1478 {; Julia
  z=conj(cosxx(pixel)^2.32)-1.25, c=(0.9/-2.48)-conj(0.2/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1479 {; A REALLY different Julia ??
  z=1/(pixel*conj(5/pixel-0.724))
  c=(0.3,0.6):
  z=(z*z+c)/1.3
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1480 {; Julia??
  z=1/(pixel+pixel-(5/pixel-0.724))
  c=flip(z*pixel):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1481 {; Julia?
  z=conj(1-pixel)/2.33^1.75
  c=(conj(tan(1/pixel))^1.32)-1.25:
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1482 {; Julia?
  z=conj(1-pixel)/2.33^1.75
  c=(-0.7456,0.2315):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1483 {; Julia?
  z=conj(1-pixel)/2.33^1.75
  c=imag(4.299,-1.2):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c-0.1/pixel)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1484 {; Julia?
  z=(pixel+pixel)/(sqr(1/pixel))
  c=((pixel-1.5)^1.637)/(z-1.2/pixel):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1485 {; Julia? Faceted Glass
  z=z1, z1=(pixel+pixel)/(flip(1/pixel*0.91/pixel+0.2/pixel))
  c=1/conj(pixel-1.5)/(conj(z)-1.4/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1486 {; Julia, Faceted Glass.
  z=z1, z1=(pixel+pixel)/(flip(1/pixel*0.91/pixel+4/pixel))
  c=conj(pixel-1.5)/(flip(z)-1.4/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1487 {; Julia
  z=(pixel+pixel)/(1/flip(1/pixel*0.91/pixel+0.9/pixel))
  c=conj(pixel-1.5)/(flip(z)-3.4/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sinh(c)))))*real(sqrt(tanh(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1488 {; Faceted Glass Julia
  z=z1, z1=(pixel+pixel)/(1/flip(1/pixel*0.91/pixel+0.9/sqr(pixel)))
  c=c1, c1=conj(pixel-1.5)/(flip(z)-3.4/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sinh(c)))))*real(sqrt(tanh(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1489 {; Julia
  z=(pixel+pixel)/(flip(1/pixel))
  c=z*(pixel)/flip(pixel-0.1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1490 {; Julia
  z=(pixel+pixel-1)/(flip(1/-pixel))
  c=z*(pixel+1)/flip(pixel-0.1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1491 {; Julia
  z=(pixel+pixel-1)/(flip(1/-pixel))
  c=z*sqr(pixel-1)/flip(pixel-0.1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1492 {; Julia
  z=(pixel+pixel-1)/(flip(1/pixel*0.91/pixel))
  c=z*sqr(pixel)/flip(1.099,0):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1493 {; VERY different Julia
  z=1/(pixel+pixel)/(cosxx(1/pixel*4/pixel))
  c=z*conj(pixel)/((-1.76,-0.014)/(3/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1494 {; Julia
  z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel))
  c=z*1/conj(pixel+pixel)/((-5.742,-0.009)/(6/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1495 {; Julia
  z=1/(pixel+pixel)/(cotan(1/pixel*4/pixel))
  c=z*1/conj(pixel+pixel)/((sqr(z-0.25)*pixel)/(6/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1496 {; Julia
  z=1/(pixel+pixel)/(tan(sqr(1/pixel*4/pixel)))
  c=z*1/(pixel+pixel)/((sqr(pixel*z-1.55)*pixel)/(6/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1497 {; Julia
  z=sqr(1-pixel)/(2^pixel-0.5)
  c=z*1/conj(pixel+pixel)/(pixel/(6/pixel)):
  z=sqr(z)
  z=z+sin(z)+c
  c=z+c/2
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1498 {; Julia?
  z=1/(pixel*conj(5/pixel-0.724))
  c=pixel+(-0.7456,0.2):
  z=sqr(z)
  z=z+sin(z)+c
  c=z+c/2
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1499 {; Julia
  z=1/(pixel+pixel-(5/pixel-0.724))
  c=flip(z*pixel):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 33carr.frm
}


Carr1500 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel))
  c=conj(pixel-1.5)/(z-1.2/pixel):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1501 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=((-0.7456,0.2)-1.9/pixel)/cosxx(z*z-1.2/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1502 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=((-4.299,1.2)-1.9/pixel)/cosxx(z*z-1.2/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1503 {; Julia?
  z=1/(pixel+pixel)/(flip(1/pixel*6/pixel))
  c=((0.6,1.1))/cosxx(z*z-6/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1504 {; Julia?
  z=1/(pixel+pixel)/(flip(1/pixel*6/pixel))
  c=((0.6,1.1))/imag(z*z-6/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1505 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel))
  c=conj(pixel-1.5)/(z-1.2/(1/flip(pixel))):
  z=(z*z+c)/1.3
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1506 {; Julia?
  z=0.1/cosxx(pixel+pixel)/(flip(1/pixel))
  c=conj(pixel-1.5)/(z-1.2/(1/flip(pixel))):
  z=(z*z+c)/1.3
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1507 {; Julia?
  z=0.1/(pixel+pixel+pixel)/(flip(6/pixel))
  c=conj((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel))):
  z=(z*z+c)/1.4
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1508 {; Julia?
  z=0.1/(pixel^pixel+pixel)/(flip(6/pixel))
  c=flip((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel))):
  z=(z*z+c)/1.4
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1509 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=conj(pixel*pixel)-(0.5456,0.2):
  z=sqr(z)
  z=z+sin(z)+c
  c=z+c/2
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1510 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=conj(pixel*pixel)/flip(pixel)/cosxx(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1511 {; Julia?
  z=0.1/(pixel+pixel)/(flip(1/pixel*0.88/pixel))
  c=exp(flip((pixel+pixel)-1.5)/(z-1.2/(4/flip(pixel)))):
  z=z*z+c
  c=((1+flip(imag(sqrt(c))))*real(sqrt(c))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1512 {; Julia?
  z1=(pixel-0.5)^(sqrt(5)^1/pixel)
  z=(z1)/(cosxx(pixel))
  c=conj(1-pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1513 {
  z=(conj(1/pixel)^2.32)-1.25
  c=(flip(1/pixel)^2.32)-1.25:
  z=z*z+c
  c=z+c/2.125
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1514 {; Julia?
  z=pixel*(pixel^2.32)
  c=(tan(pixel)^2.32):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1515 {; Julia
  z=real(pixel)+flip(imag(pixel)*(-0.3,0.3))
  c=(-0.7456,0.2)+(1.099,0)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1516 {; Julia
  z=conj(real(pixel))+flip(imag(pixel))
  c=cosxx(4/pixel)+(2.924)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+(z))
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1517 {; Julia
  z=conj(real(pixel))+flip(imag(pixel))
  c=exp(4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1518 {; Julia
  z=conj(abs(1/pixel))+(real(pixel))+flip(imag(pixel))
  c=exp(4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1519 {; Julia
  z=conj(abs(0.6/pixel))+(real(pixel))+flip(imag(pixel))
  c=exp(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1520 {; Julia
  z=flip(exp(-5.742,-0.009))+(real(pixel))+flip(imag(pixel))
  c=exp(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1521 {; Julia Butterfly
  z=cotan(exp(-5.742,-0.009))+(real(pixel))+flip(imag(pixel))
  c=sqr(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: carr1521.frm
}


Carr1522 {; Julia
  z=cotan(exp(-0.6882,-0.1729))+(real(pixel))+flip(imag(pixel))
  c=sqr(0.4/pixel)*real(pixel)+flip(imag(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1523 {; Julia
  z=sin(exp(-5.742,-0.009))+(real(pixel*pixel))+flip(imag(pixel*pixel))
  c=sqr(0.1/pixel)*real(pixel*pixel)+flip(imag(pixel*pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1524 {; Julia
  z=conj(sqr(1/pixel)^2.12)+1.25,
  c=sqr(0.1/pixel)*real(pixel*pixel)+flip(imag(pixel*pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1524A {
  z=(1/pixel)/1.75
  c=((1/pixel)/2)/(z-2.5)^conj(tanh(pixel-1)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1525 {
  z=(1/pixel)/1.85
  c=((1/pixel)/2)/(z-2.5)^conj(imag(pixel-1)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1526 {
  z=(1/pixel)/1.85
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z^conj(cotanh(pixel-0.2)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1527 {
  z=(1/pixel)/1.85
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1528 {; Julia
  z=(1/pixel*0.88/pixel)
  c=((1/pixel-0.524)/4)/conj(z-1.1)*z*z^conj(cotanh(pixel-0.2)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z| <=4
  ;SOURCE: 34carr.frm
}


Carr1529 {; Julia
  z=(1/pixel)/1.75
  c=((1/pixel)/2)/z-2.5^tanh(pixel-1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1530 {; Julia
  z=sqr(1/pixel)/1.75
  c=((1/pixel)/2)/z-2.5^sin(pixel-1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1531 {; Julia
  z=sqr(1/pixel)/1.75
  c=(2/pixel)/(z-2.5^cosxx(pixel-1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1532 {; Julia
  z=conj((1/pixel)/1.91)
  c=(0.33/pixel)/z-2.5^cotanh(pixel-1.124):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1533 {
  z=(1/pixel)/1.85
  c=((1/pixel)/2)/(z-1.25)^conj(real(pixel-0.25)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1534 {
  z=(1/pixel)/1.85
  c=((1/pixel)/2)/(z-1.25)^conj(real(pixel-0.25)):
  z=z*z+c+sin(z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1535 {; Julia
  z=real((1/pixel)/1.91)/(5.7,-1.3)
  c=(1/pixel*0.91/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1536 {; Julia
  z=((1/pixel)/0.71)/(pixel-1.324)
  c=z-2.5^(pixel-1.324):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1537 {; Julia
  z=1/(pixel*pixel)
  c=cosxx(pixel*pixel)/tan(pixel-z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1538 {
  z=1/(pixel*pixel)
  c=cosxx(pixel*pixel)/tan(pixel-z):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1539 {; Julia
  z=((1-pixel)/0.413)+1.924
  c=z-1/conj(z*z)+conj(pixel-z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1540 {
  z=sqr(1/pixel)+sqr(pixel)
  c=sin(tan(exp(z-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1541 {; Julia
  z=conj(pixel)
  c=z*z+pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1542 {; Spider type.
  z=flip(pixel*pixel)
  c=pixel^(z-1):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1543 {; Spider type.
  z=conj(pixel*pixel)
  c=flip(pixel)^(z-1):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1544 {
  z=(pixel*pixel)^0.54
  c=sqr(pixel)^(z-0.55):
  z=(z*z+c)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1545 {; Spider type
  z=(pixel*pixel)^0.54
  c=sqr(pixel)^(z-0.55):
  z=(z*z+c)
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1546 {; Spider type.
  z=(pixel*pixel)^0.54
  c=cos(pixel)/sin(pixel):
  z=(z*z+c)
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1547 {; Julia
  z=(pixel*pixel)^0.54
  c=real(pixel)/imag(pixel):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1548 {; Julia
  z=(pixel*pixel)-sqrt(pixel*pixel)
  c=sin(pixel)/cos(pixel):
  z=sqr(z)+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1549 {; Julia
  z=(pixel*pixel)-log(pixel*pixel)
  c=sin(pixel)/cos(pixel):
  z=sqr(z)+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 34carr.frm
}


Carr1550 {; Julia, use floating point.
  z=1/pixel-sqrt(1/pixel)
  c=sin(1/pixel)/cosxx(1/pixel):
  z=sqr(z)+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1551 {; Julia
  z=conj(1/pixel)/sqr(1/pixel)
  c=cotanh(1/pixel)/cosh(1/pixel):
  z=sqr(z)+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1552 {
  z=conj(pixel)/sqr(pixel)
  c=conj(1/pixel)/exp(1/pixel):
  z=(sqr(z)+c)/1.3
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1553 {; Spider type.
  z=cos(pixel)/sin(0.3,0.6)
  c=z/(sin(1/pixel+1)/cos(-0.7456,0.2)):
  z=(sqr(z)+c)
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1554 {; Crystalbrot.
  z=sqr(pixel^pixel)/(tan(pixel))
  c=(sqr(2/pixel))/(cos(2/pixel)*sin(2/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1555 {; Julia
  z=(pixel^pixel)/(cotan(pixel))
  c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1556 {; Spider type.
  z=(pixel^pixel)/(cotan(pixel))
  c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1557 {; Spider type.
  z=(pixel^pixel)/(conj(pixel))
  c=(cos(1/pixel))/(cos(2/pixel)*sin(2/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1558 {; Mandel type.
  z=conj(pixel^pixel)/(flip(pixel))
  c=cos(pixel)/(conj(pixel)*cosxx(2/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1559 {; Julia
  z=conj(pixel^pixel)/(flip(pixel^pixel))
  c=cos(pixel)/(conj(pixel)*cosxx(3/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1560 {; Julia
  z=conj(pixel*pixel)/flip(pixel*pixel)
  c=cos(pixel)/conj(pixel)^cosxx(3/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1561 {; Julia
  z=conj(2/pixel*(2*pixel))/(flip(1-pixel))
  c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1561-A {; Julia,Faceted Glass
  z=z1, z1=conj(2/pixel*(2*pixel))/(flip(1-pixel))
  c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1562 {; Julia
  z=sin(1/pixel)/(flip(1-pixel))
  c=(tan(pixel))/(conj(3/pixel)-cosxx(pixel)):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1563 {; Spider type.
  z=sin(1/pixel)/(flip(1-pixel))
  c=(tan(pixel))/(conj(3/pixel)-cosxx(pixel)):
  z=(z*z+c)
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1564 {; Julia.
  z=flip(pixel*pixel)/tan(sqr(pixel-0.5))
  c=sqr(sqr(pixel))/conj(sqr(pixel)):
  z=(z*z+c)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1565 {; Mandelbrot type.
  z=flip(pixel*pixel)/cosh(sqr(pixel-0.5))
  c=sqr(sqr(pixel))/sinh(sqr(pixel)):
  z=(z*z+c)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1566 {; Julia.
  z=(1/pixel*0.88/pixel)
  c=((pixel^z)-1)*(pixel^(z-1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1567 {; Julia.
  z=sqr(1/pixel*0.88/pixel)
  c=((pixel^z)-1)/conj(pixel^(z)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1568 {; Julia.
  z=conj(sqr(1/pixel*0.88/pixel))
  c=((pixel^z)-1)/exp(pixel^(z)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1569 {; Mandelbrot type.
  z=1/conj(tan(0.91/pixel*0.88/pixel))
  c=(cos(pixel))/(conj(3/pixel)^cosxx(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1570 {; Mandelbrot type.
          ; Edited for Fractint v. 20 by George Martin, 10/98
  z=((-0.7456,0.2)+1)/pixel
  c=pixel*pixel/(0.3,0.6):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1571 {; Mandel type.
  z=((-0.7456,0.2)+1)/pixel
  c=pixel*pixel/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1572 {; Spider type.
  z=((-0.7456,0.2)+1)/pixel
  c=pixel*pixel/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1573 {; Mandel type.
  z=((-0.7456,0.2)+1)/pixel
  c=tan(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1574 {; Mandel type.
  z=((-0.7456,0.2)+1)/pixel
  c=1/cos(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1575 {; Julia.
  z=((-0.7456,0.2)+1)/pixel
  c=1/cos(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1576 {; Mandelbrot type.
  z=((-0.94562,0.329)+1)/(pixel)
  c=4/sin(3/tan(pixel*pixel))/((0.3,0.6)*(-0.3,0.3)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1577 {; Julia.
  z=(conj(sin(2/pixel)))/sin(pixel)
  c=((-0.3,0.3)/(0.3,0.6))/conj(pixel*pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1578 {; Julia.
  z=((-0.7456,0.2)+1)/pixel
  c=asin(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1579 {; Julia
  z=1/asin(pixel*(1.099,0))/(4/sin(pixel*pixel))
  c=asin(pixel*pixel)/(0.3,0.6)*(-0.3,0.3):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1580 {; Julia.
  z=sqr(0.654,0)+sqr(pixel)-1.5
  c=sqr(z-0.1)/((0.654,0)-asin(1/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1581 {; Spider.
  z=log(0.654,0)+sqrt(pixel)-0.75*(1/pixel)
  c=sqrt(z-0.35)/((0.654,0)-asin(1/sqrt(pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1582 {; Julia.
  z=conj(cos(tan(0.18/pixel)))-0.25
  c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1583 {; Spider type.
  z=conj(cos(tan(0.18/pixel)))-0.25
  c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1584 {; Mandelbrot type.
  z=conj(cos(tan(0.18/pixel)))-0.25
  c=sin(conj(exp(1.79/pixel)))/(1.5/pixel):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1585 {; Julia.
  z=conj(sin(cotan(1.18/pixel*1.12/pixel)))-0.25
  c=cosxx(conj(exp(1.79/pixel)))/(0.59/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1586 {; Hmmmmmmm....
  z=conj(sin(cotan(1.18/pixel*1.12/pixel)))-0.25
  c=cosxx(conj(exp(1.79/pixel)))/(0.59/pixel):
  z=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  c=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1587 {; Julia
  z=((1/cosxx(1/sin(cotanh(1.18/pixel)))-0.25)\
         /(conj(sqr(0.5/pixel))))-0.5
  c=1/cosxx(1/conj(asin(0.79/pixel)))-0.5:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1588 {; Julia.
  z=1/asin(pixel)
  c=1/conj(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1589 {; Julia.
  z=1/acos(pixel), c=1/asin(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1590 {; Spider type.
  z=1/acos(pixel)
  c=1/asin(pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1591 {; Spider type.
  z=1/acos(pixel+pixel)
  c=1/asin(pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1592 {; Julia.
  z=pixel/atan(pixel)
  c=(1+pixel)/atan(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1593 {; Julia.
  z=pixel/(1/asin(pixel))
  c=(1+pixel)/conj(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1594 {; Julia.
  z=pixel/(2/acos(pixel+0.33))
  c=(1+pixel)/(cosxx(2/pixel-0.25)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1595 {; Julia.
  z=pixel/(2/acos(1/pixel*pixel+0.33))
  c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1596 {; Spider type.
  z=pixel/(2/acos(1/pixel*pixel+0.33))
  c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1597 {; Mandelbrot type.
  z=pixel/(2/acos(1/pixel*pixel+0.33))
  c=(1+1.5/pixel)/(cosxx(2/pixel-0.25)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1598 {; Spider type.
  z=asin(pixel)/(2/acos(1/pixel*pixel+0.33))
  c=(1+sin(pixel))/(1/conj(cosxx(2/pixel-0.25))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1599 {; Julia
  z=sqrt(1/asin(pixel))
  c=(1+sin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 35carr.frm
}


Carr1600 {; Julia.
  z=acos(exp(1/atanh(pixel-0.5)))
  c=sqr(1+asin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1601 {; Julia.
  z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel))
  c=pixel*pixel/(asin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1602 {; Spider type.
  z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel))
  c=pixel*pixel/(asin(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1603 {; Mandelbrot type.
  z=(1/log(pixel/0.2)-conj(1/pixel))/(acos(pixel))
  c=pixel*pixel/(asin(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1604 {; Julia.
  z=(1/log(pixel/0.2)-1/conj(1/pixel))/(acos(pixel))
  c=conj(pixel*pixel)/(1/asin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1605 {; Julia.
  z=(1-pixel)/asinh(pixel+0.5)
  c=(pixel)/(1/asin(1-pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1606 {; Julia.
  z=1/asinh(pixel)
  c=log((pixel+4/pixel)/(1/asin(1-pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1607 {; Julia.
  z=0.9/pixel
  c=exp(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1608 {; Spider type.
  z=(-0.3,0.3)*pixel
  c=pixel*pixel:
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1609 {; Julia.
  z=pixel+asin(conj(pixel))
  c=1+pixel*pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1610 {; Julia.
  z=1/cosxx(pixel)+1/asin(conj(pixel))-0.5
  c=1.34/(1+sqr(pixel*pixel+sin(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1611 {; Spider type.
  z=1/cos(pixel)+2/cos(conj(pixel))-0.5
  c=1.34/(1+sqr(pixel*pixel+sin(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1612 {; Julia.
  z=(1/cos(pixel)/cos(1/conj(pixel)))-2/pixel
  c=2.34/(1+sqr(pixel*pixel+1/asin(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1613 {; Julia.
  z=(1/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(1.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1614 {; Spider type.
  z=(1/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(1.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1615 {; Julia.
  z=(1/cos(pixel)/sin(1/flip(pixel)))-2.5/pixel
  c=2.34/(1.75+sqr(pixel*pixel+2/acos(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1616 {; Spider type.
  z=(1/cos(pixel)/sin(1/flip(pixel)))-2.5/pixel
  c=2.34/(1.75+sqr(pixel*pixel+2/acos(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1617 {; Julia.
  z=(2.7/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(3.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1618 {; Julia
  z=(2.7/sin(pixel+pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(3.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1619 {; Julia.
  z=1/acos(1+pixel*pixel)/(1/asin(1-pixel))
  c=3.34/(1.5+sqr((pixel+0.5)*(pixel+0.5)+atan(pixel+pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1620 {; Julia.
  z=1/sin(1+2.23*(pixel))/(1/sin(1-pixel))
  c=0.34/(0.25+conj((pixel+0.5)*(pixel+0.5)+atan(pixel+1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1621 {; Julia.
  z=exp(1+2.23*(pixel))/(sqr(1-pixel))
  c=0.34/(0.25+conj(asin((pixel+0.5)*(pixel+0.5))+atan(pixel+1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1622 {; Julia.
  z=2/sin(pixel)/cos(1/pixel*1/pixel)
  c=2/sin(3/pixel)/(cos(3/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1623 {; Spider type.
  z=2/sin(pixel)/cos(1/pixel*1/pixel)
  c=2/sin(3/pixel)/(cos(3/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1624 {; Julia.
  z=3/sin(pixel)/cos(1/pixel*1/pixel)
  c=2/sin(4/pixel)/(cos(4/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1625 {; Julia.
  z=3/sin(1/pixel*1/pixel)/(2.5/cos(pixel*pixel))
  c=2/cosxx(4/pixel-1)/(cosxx(4/pixel+1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1626 {; Julia.
  z=0.7/sin(1/pixel*1/pixel)/(2.5/cos(pixel*pixel))
  c=2/cosxx(4/pixel-1)/(cosxx(4/pixel+1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1627 {; Julia.
  z=0.55/sinh(1/pixel)/(2.5/abs(pixel*1.33))
  c=0.38/cos(4/pixel-1)/(cos(4/pixel+1)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1628 {; Julia.
  z=2/sin(pixel)/(cos(1/pixel*1/pixel*0.91/pixel))
  c=imag(2/sin(3/pixel))/imag(cos(3/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1629 {; Julia.
  z=(sqrt(pixel)^pixel)/sqr(sqr(pixel))
  c=(-0.3,0.3)/log(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1630 {; Julia.
  z=(sqrt(pixel)^pixel)/sqr(sqr(1/asin(pixel)))
  c=acos(pixel)/acos(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1631 {; Julia.
  z=asin(sqrt(pixel)^pixel)/sqr(sqr(tan(1/asin(pixel))))
  c=acos(pixel)/acos(pixel+1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1632 {; Julia.
  z=sin(pixel)/cos(pixel)
  c=(z+conj(pixel))/(z+exp(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1633 {; Spider type.
  z=sin(pixel)/cos(pixel)
  c=(z+conj(pixel))/(z+exp(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1634 {; Julia.
  z=sin(pixel)/cos(pixel)
  c=(z+conj(pixel))/(z+exp(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1635 {; Julia.
  z=1/-sin(1/pixel*0.91/pixel)
  c=1/-conj(5/pixel*0.88/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1636 {; Julia.
  z=1/sin(1/pixel*0.91/pixel)*1/pixel
  c=1/conj(5/pixel*0.88/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1637 {; Julia.
  z=sin(1/cosxx(1/pixel))
  c=1/atan(1/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1638 {; Julia.
  z=(1/cosh(1/cotanh(0.5/pixel)))
  c=1/cosh(1/tanh(1/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(asin(c-0.1/pixel)))))*real(sqrt(atan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1639 {; Julia.
  z=conj(1/cosh(1/cotanh(0.5/pixel)))
  c=flip(1/cosh(1/tanh(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1640 {; Julia.
  z=conj(1/sinh(1/tanh(0.5/pixel)))
  c=flip(1/sinh(1/cosh(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1641 {; Spider type.
  z=conj(1/sinh(1/tanh(0.75/pixel)))
  c=conj(1/sinh(1/cosh(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1642 {; Spider type.
  z=1/tan(1/conj(1/sinh(1/tanh(0.75/pixel))))
  c=1/tan(1/conj(1/sinh(1/cosh(1/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1643 {; Julia.
  z=sqr(1/sin(1/pixel))
  c=1/conj(sqr(sqr(1/pixel*0.88/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1644 {; Spider type.
  z=sqr(sqr(1/sin(1/pixel)))
  c=1/conj(sqr(sqr(1/pixel*0.88/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1645 {; Spider type.
  z=1/cos(pixel)/(1.099,0)/pixel
  c=1/sin(pixel)/(1.099,0)/pixel:
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1646 {; Mandel type.
  z=1/tan(pixel)/(-0.7456,0.2)/pixel
  c=1/tan(pixel)/(-0.7456,0.2)/pixel:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1647 {; Spider type.
  z=1/tan(pixel)/(0.3,0.6)/pixel
  c=1/tan(pixel)/(0.3,0.6)/pixel:
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1648 {; Julia.
  z=(1/asin(pixel)/(0.3,0.6))/pixel
  c=(1/sin(pixel)/(0.3,0.6))/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1649 {; Julia
  z=1/cosxx(pixel)/(-0.3,0.6)/pixel
  c=1/cosxx(pixel)/(-0.3,0.6)/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 36carr.frm
}


Carr1650 {; Julia
  z=1/sin(pixel)/(1.099,0)/(pixel)
  c=(1/pixel)/(1.099,0)/(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1651 {; Spider type.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/sin(z^pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1652 {; Julia.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/cosxx(z^pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1653 {; Spider type.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/cosxx(z^pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1654 {; Julia.
  z=abs(1/tan(pixel)/sin(pixel)/(1/cos(pixel)))
  c=1/asin(z^pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1655 {; Julia.
  z=abs(1/sin(pixel))
  c=(1/z^z*z+z):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1656 {; Spider type.
  z=abs(1/sin(pixel))
  c=(1/z^z*z+z):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1657 {; Julia.
  z=abs(1/tan(pixel*pixel))
  c=0.1*sin(z*z)/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1658 {; Julia.
  z=conj(abs(tan(pixel*pixel)))
  c=0.1*sin(z*z*z)/(pixel-0.5):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1659 {; Julia.
  z=1/sin(1/pixel)/(1/cos(1/pixel))/(cos(1-pixel))
  c=pixel+(-0.7456,0.2):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1660 {; Spider type.
  z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1-conj(pixel)))
  c=1/cosxx(pixel)+(-0.7456,0.2):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1661 {; Spider type.
  z=1/sin(2/pixel)/(1/cos(2/pixel))/(cos(1/pixel-conj(pixel)))
  c=1/cos(pixel)+(-0.3,0.6):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1662 {; Julia.
  z=1/cosxx(2/pixel)/(cos(1/pixel-sin(pixel)))
  c=1/sinh(pixel)/(1/cos(1.0,0.4)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1663 {; Julia.
  z=1/cosxx(sqr(3.2/pixel))/(cos(1.85/pixel-sin(pixel)))
  c=z/pixel:
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1664 {; Julia.
  z=sin(pixel*pixel)/pixel
  c=pixel/conj(pixel*pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1665 {; Julia.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=1/cos(3.5/pixel)/(1/pixel+1):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1666 {; Spider type.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=1/cos(3.5/pixel)/(1/pixel+1):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1667 {
  z=pixel, c=sqrt(1/(1/(1/(5/pixel)))):
  z=z*z+(c-1)
  c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
  |z|<=4
  ;SOURCE: 37carr.frm
}


Carr1668 {; Spider type.
  z=1/cos(2.5/pixel)/(1/pixel-1)
  c=sqrt(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1669 {; Spider type.
  z=1/log(1/(1/(1/cos(5/pixel))))
  c=sqrt(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1670 {; Julia.
  z=sqr(0.1-pixel)
  c=1/log(z)^cos(pixel*sin(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1671 {; Spider type.
  z=sqr(0.1-pixel)
  c=1/log(z)^cos(pixel*sin(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1672 {; Julia.
  z=sqr(conj(0.1-pixel))
  c=1/log(z)^sin(pixel*cosxx(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1673 {; Julia type.
  z=sqr(sin(cos(0.1-pixel)))
  c=log(z)^(1/sin(pixel*cosxx(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1674 {; Julia.
  z=sqr(1/sin(1/cosxx(0.1-pixel)))
  c=sqrt(z)^(1/sin(pixel*sin(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1675 {; Julia.
  z=sqr(1/sin(1/cosxx(sqr(0.2-pixel))))
  c=sinh(z*z)/(sin(pixel*1/sin(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1676 {; Faceted Glass Julia.
  z=z1, z1=sqr(1/sin(1/tanh(sqr(0.32-pixel))))
  c=sinh(z*z)-(sin(pixel*1/sin(pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1677 {; Julia.
  z=(0.25-pixel)/(conj(pixel))
  c=(0.33-pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
   ; c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1678 {; Spider type.
  z=(0.25-pixel)/(conj(pixel))
  c=(0.33-pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1679 {; Julia.
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=(0.33-sin(pixel))/(0.33-cos(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1680 {; Mandelbrot.
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=(0.33-sin(pixel))/(0.33-cos(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1681 {; Spider type.
  z=sin(0.25-pixel)/(sin(1/pixel))
  c=(0.33-sin(pixel))/(0.33-cos(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1682 {; Julia.
  z=1/cos(0.25-pixel)/(1/cosxx(1/pixel))
  c=(0.33-cosh(pixel))/(0.33-sinh(pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1683 {; Julia.
  z=sin(0.33-pixel)
  c=(0.39-cos(0.33-pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1684 {; Mandel type.
  z=flip(0.33-1/cotan(pixel))
  c=(0.39-1/cotan(0.33-5/pixel))-1/pixel:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1685 {; Julia.
  z=sqr(1.33-cotan(flip(0.95/pixel/pixel)))
  c=(0.39-asin(0.33-1.5/(-0.7456,0.2)))/sqr(flip(4/pixel/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1686 {; Spider type.
  z=1/(pixel-1/pixel-0.9/pixel)
  c=1/(pixel-1/pixel-0.9/pixel):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1687 {; Julia.
  z=z1, z1=1/(pixel-1/pixel-0.9/pixel)
  c=1/(pixel-1/pixel-0.9/pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1688 {; Spider type.
  z=1/(pixel-sin(pixel))
  c=1/(pixel-sin(pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1689 {; Mandel type.
  z=1/(pixel-asin(pixel))
  c=1/(pixel-asin(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1690 {; Mandel type.
  z=1/(pixel-flip(1/pixel)-conj(1/pixel))
  c=1/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1691 {; Mandel type.
  z=1/(abs(pixel)-flip(sin(1/pixel))-conj(sin(1/pixel)))
  c=1/(pixel-flip(sin(1/pixel))-conj(sin(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1692 {; Spider type.
  z=1/(abs(pixel-0.5)-flip(sin(1/pixel))-conj(sin(1/pixel)))
  c=1/(abs(pixel-0.5)-flip(sin(1/pixel))-conj(sin(1/pixel))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1693 {; Mandel type.
  z=1/((pixel+pixel)+flip(1/pixel)-conj(1/pixel))
  c=1/(pixel+flip(1/pixel)-conj(1/pixel)-sin(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1694 {; Mandel type.
  z=1/(pixel+5*pixel)
  c=1/pixel-conj(pixel):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1695 {; Julia 
  z=1/(pixel+5*pixel)
  c=1/pixel-conj(pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1696 {; Mandel type.
  z=((-0.7456,0.2))/(flip(pixel))
  c=1/((pixel-(1.099,0)/pixel)/pixel)/conj(pixel):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1697 {; Mandel type.
  c=(pixel)/(flip(pixel)-conj(1/pixel))
  z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1698 {; Spider type.
  c=(pixel)/(flip(pixel)-conj(1/pixel))
  z=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1699 {; Mandel type.
  c=(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(2*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 37carr.frm
}


Carr1700 {; Julia.
  c=(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(2*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1701 {; Spider type.
  c=(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(2*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1702 {; Mandelbrot.
  c=(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1703 {; Mandelbrot
  c=conj(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1704 {; Mandelbrot
  c=1/tan(pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1705 {; Mandelbrot.
  c=tan(pixel+pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1706 {; Mandelbrot.
  c=cosxx(pixel+pixel+pixel)/(flip(1/pixel)-conj(1/pixel))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1707 {; Julia.
  c=conj(pixel+pixel)/(flip(1/pixel)-conj(1/pixel))
  z=sin(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1708 {; Mandelbrot.
  c=conj(pixel+pixel)/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1709 {; Mandelbrot.
  c=flip(pixel)/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1710 {; Mandelbrot.
  c=conj(pixel^1/pixel)/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/(3*pixel-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1711 {; Mandelbrot.
  c=conj(pixel^imag(1/pixel))/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/(3*(pixel)-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1712 {; Mandelbrot.
  c=conj(pixel^(1/pixel))/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/((0.3,0.6)*(pixel)-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1713 {; Mandelbrot.
  c=conj(pixel^(1/pixel))/(pixel-(flip(1/pixel)-conj(1/pixel)))
  z=(1/pixel)/((1/pixel)^(pixel)-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1714 {
  c=conj(pixel^(1/pixel))/(pixel-(flip(1/pixel+1/pixel)\
       -conj(1/pixel+1/pixel)))
  z=(1/pixel)/((1/pixel)^(pixel)-flip(1/pixel)-conj(1/pixel)):
  z=z*z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1715 {; Mandelbrot.
  c=(0.3,0.6)/conj(pixel)
  z=(1/pixel)/((1/pixel)^(pixel)-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1716 {; Mandelbrot.
  c=(-0.7456,0.2)/(conj(pixel))
  z=(1/pixel)/((1/pixel)^(pixel)-tan(1/pixel)-sin(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1717 {; Mandelbrot.
  c=(-0.7456,0.2)/(conj(pixel))
  z=(1/pixel)/((1/pixel)^conj(pixel)-cotan(1/pixel)-cos(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1718 {; Mandelbrot.
  c=(-0.7456,0.2)/(conj(pixel))
  z=(1/pixel)/((1/pixel)^log(pixel)-flip(1/pixel)-tan(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1719 {; Mandelbrot.
  c=conj(4.299,-1.2)/(conj(pixel))
  z=(1/pixel)/((1/pixel)^(pixel)-flip(1/pixel)-tan(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1720 {; Mandelbrot.
  c=conj(-0.3,0.3)/(conj(pixel))
  z=(1/pixel)/((1/pixel)^(pixel)-flip(1/pixel)-tan(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1721 {; Mandelbrot.
  z=1/(pixel-flip(1/pixel)-conj(1/pixel))
  c=1/(pixel-flip(1/pixel+0.5)-conj(1/pixel)):
  z=z*z+c-0.02/z
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1722 {; Mandelbrot
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=1/(pixel-sqr(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1723 {; Julia.
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=1/(pixel-sqr(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1724 {; Spider type.
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=1/(pixel-sqr(1/pixel)-conj(1/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1725 {; Mandelbrot.
  z=(1/pixel)/(3*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=conj(pixel^1/pixel)/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1726 {; Mandelbrot.
  z=1/(pixel)/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(pixel*sin(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1727 {; Julia.
  z=1/(pixel)/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(pixel*sin(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel)))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1728 {; Spider type.
  z=1/(pixel)/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(pixel*sin(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1729 {; Mandelbrot.
  z=(tan(1/pixel))/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1730 {; Spider type.
  z=(tan(1/pixel))/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(tan(pixel)*(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1731 {; Mandelbrot.
  z=(conj(1/pixel))/(5*pixel-(sin(flip(pixel)))-conj(1/pixel))
  c=1/(cos(pixel)*conj(pixel))/(pixel-sqr(flip(1/pixel)-sqr(conj(1/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1732 {; Mandelbrot.
  z=1/(pixel-flip(1/pixel)-conj(1/pixel))
  c=1/(pixel-flip(1/pixel)-conj(1/pixel))/1.66:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1733 {; Mandelbrot.
  z=(sqr(sqr(sqr(sqr(1/(pixel-conj(1/pixel)-flip(1/pixel)))))))
  c=1/(pixel-exp(conj(1/pixel))-exp(flip(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1734 {
  z=tan(sqr(sqr(sqr(sqr(1/(pixel-conj(1/pixel)-flip(1/pixel)))))))
  c=1/(pixel-sqr(tan(conj(1/pixel)))-sqr(exp(flip(1/pixel)))):
  z=z*z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1735 {; Spider type.
  z=tan(sqr(sqr(sqr(sqr(1/(pixel-conj(1/pixel)-flip(1/pixel)))))))
  c=1/(pixel-sqr(tan(conj(1/pixel)))-sqr(exp(flip(1/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1736 {; Mandelbrot
  z=abs(sqr(sqr(sqr(sqr(1/(pixel-conj(1/pixel)-flip(1/pixel)))))))
  c=1/(pixel-sqr(tan(conj(1/pixel)))-sqr(exp(real(conj(1/pixel))))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1737 {; Mandelbrot.
  z=abs(sqr(sqr(sqr(sqr(1/((pixel-0.5)-conj(1/pixel)-flip(1/pixel)))))))
  c=1/(pixel-sqr(sinh(conj(1/pixel)))-sqr(exp(imag(conj(1/pixel))))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1738 {; Mandelbrot.
  z=abs(sqr(sqr(sqr(sqr(1/((pixel-0.5)-conj(1/pixel)-flip(1/pixel)))))))
  c=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1739 {; Mandelbrot.
  z=abs(sqr(sqr(sqr(sqr(1/((pixel-0.5)-conj(3/pixel)-flip(1/pixel)))))))
  c=1/((pixel)-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1740 {; Mandelbrot.
  z=sqr(sqr(1/((pixel-0.5)-conj(1/pixel)-flip(1/pixel))))
  c=1/(pixel-exp(sinh(conj(2/pixel+1.5/pixel)))\
     -sqr(exp(imag(conj(1/pixel))))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1741 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=conj(1/(pixel-conj(1/pixel)-flip(1/pixel))):
  z=z*z+c
  |real(z)| <=100
  ;SOURCE: 38carr.frm
}


Carr1742 {; Mandelbrot.
  z=0
  c=1/(pixel-conj(1/pixel)-flip(1/pixel)-tan(1/pixel)-sin(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1743 {
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1-z/pixel:
  z=z*z+c/(pixel-flip(1/pixel-conj(1/pixel)))
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1744 {
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1-z/(flip(pixel)):
  z=z*z+c/(pixel-flip(1/pixel-conj(1/pixel)))
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1745 {; Mandelbrot.
  z=1/(cosh(pixel+pixel))/(cotanh(1/pixel*6/pixel))
  c=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1746 {; Mandelbrot.
  z=1/(sinh(pixel+pixel))/(cotanh(1/pixel*6/pixel))
  c=1/(pixel-sin(1/pixel)-cos(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1747 {; Mandelbrot.
  z=1/(cotanh(pixel+pixel))/(cotan(1/pixel*6/pixel))
  c=1/(pixel-conj(cabs(1/pixel))-tanh(conj(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1748 {; Mandelbrot
  z=1/(pixel-flip(1/pixel)-conj(1/pixel))
  c=1/((-0.7456,0.2)+(-0.3,0.6)*conj(pixel)+flip(sin(pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1749 {; Mandelbrot.
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel)))
  c=1/(sin(4/pixel)*real(conj(pixel))+flip(imag(pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 38carr.frm
}


Carr1750 {
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel)))
  c=1/(sin(pixel)+cos(pixel)+conj(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1751 {
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel)))
  c=1/(conj(cos(pixel)*cotan(pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1752 {; Mandelbrot
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel)))
  c=1/(pixel*conj(5/pixel-0.724)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1753 {; Mandelbrot
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel)))
  c=1/(pixel*flip(5/pixel-0.724)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1754 {; Mandelbrot
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel)))
  c=1/(pixel*tanh(conj(1.9/pixel-0.324))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1755 {; Mandelbrot.
  z=(1/(pixel-cosxx(1/pixel)-cos(2/pixel)))
  c=1/(pixel*sinh(5/pixel-0.724)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1756 {; Mandelbrot
  z=(1/(pixel-cosxx(1/pixel)-cos(2/pixel)))
  c=(conj(1/pixel)^2.32)-1.25:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1757 {; Mandelbrot
  z=(1/(pixel-cosxx(1/pixel)-cos(2/pixel)))
  c=conj(1-pixel)/2.33^1.75:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1758 {; Mandelbrot.
  z=(tan(sqr(1/pixel)))
  c=(atan(real(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1759 {; Mandelbrot.
  c=(atan(real(1/pixel)))
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1760 {; Julia.
  c=(atan(real(1/pixel)))
  z=(1/(pixel-flip(1/pixel)-conj(1/pixel))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1761 {; Mandelbrot.
  z=1/(pixel-sin(conj(1/pixel))-flip(1/pixel))
  c=1/(pixel*(0.5*(conj(5/pixel-0.724)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1761A {
  z=1/(pixel-sin(conj(1/pixel))-flip(1/pixel))
  c=1/(pixel*(pixel*(conj(5/pixel-0.724)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1762 {; Mandelbrot.
  z=1/(pixel-(conj(1/pixel))-flip(1/pixel))
  c=1/(pixel*(conj(2.5/pixel-0.724))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1763 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=conj(1/(pixel-conj(1/pixel)-flip(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1764 {; Mandelbrot.
  c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  z=sqrt(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1765 {; Mandelbrot.
  c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  z=1/log(1/(1/(1/cos(5/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1766 {; Mandelbrot.
  c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  z=1/log(1/(1/(1/cos(7/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1767 {; Mandelbrot.
  c=1/(conj(cos(pixel)-1/pixel))
  z=1/log(1/(1/(1/cos(4.9/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1768 {; Mandelbrot.
  c=1/(conj(cos(pixel)-cos(1/pixel)))
  z=1/log(1/(1/(1/cos(4.9/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1769 {; Mandelbrot.
  c=1/(conj(cos(pixel)-conj(1/pixel)))
  z=1/log(1/(1/(1/cos(4.9/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1770 {; Mandelbrot.
  c=1/(conj(cos(pixel)-real(2/pixel)))
  z=1/log(1/(1/(1/cos(4.9/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1771 {; Mandelbrot.
  c=1/(conj(cos(pixel)-cos(1/pixel)-flip(1/pixel)))
  z=1/log(1/(1/(1/cos(7/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1772 {; Julia.
  c=conj(0.5/pixel)/(conj(cos(pixel)-cos(1/pixel)))
  z=1/log(1/(1/(1/cos(7/pixel)))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1773 {; Spider type.
  c=conj(1/pixel)/(conj(1/pixel)^(pixel)-flip(1/pixel)-conj(1/pixel))
  z=1/log(1/(1/(1/cos(7/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1774 {; Mandelbrot.
  c=(1/pixel)+0.1*(atan(tan(7/pixel)))
  z=1/pixel:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1775 {; Mandelbrot.
  c=(1/pixel)+0.1*(atan(tan(7/pixel)))
  z=1/(pixel*atan(3/pixel-0.724)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1776 {; Mandelbrot.
  c=(1/pixel+1.15/pixel)+0.1*(tan(cosxx(7/pixel-real(3.5/pixel))))
  z=1/((pixel-0.5)-tan(2.5/pixel)-conj(5/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1777 {; Mandelbrot.
  c=(1/pixel+1.15/pixel)+0.1*(tan(cotanh(7/pixel-real(3.5/pixel))))
  z=1/((pixel-0.5)-real(2.5/pixel)-conj(5/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1778 {; Mandelbrot.
  z=1/(log(pixel)+cosxx(pixel))
  c=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1779 {; Mandelbrot.
  z=1/(cotanh(pixel)+conj(pixel))
  c=1/(pixel-tan(pixel)-sqrt(pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1780 {; Mandelbrot.
  z=1/(cotanh(pixel)+conj(pixel))
  c=1/(pixel-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1781 {; Mandelbrot.
  z=1/(cos(pixel)+cosxx(5/pixel-cosxx(1.5/pixel-1/conj(5.5/pixel))))
  c=1/(conj(pixel-conj(1/pixel+(1/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1782 {; Mandelbrot.
  z=1/(atan(pixel/conj(0.1/pixel)))
  c=1/(conj(pixel)+tan(pixel)-cos(1/pixel)-cosh(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1783 {
  z=1/(atan(pixel/conj(0.09/pixel)))
  c=1/(conj(pixel-0.2)+tan(pixel)-cos(1/pixel)-cosh(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1784 {
  z=1/(atan(pixel/conj(0.25/pixel)))
  c=1/(conj(pixel-0.2)+sin(pixel)+cosxx(1/pixel)-cos(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1785 {; Spidel type.
  z=1/(flip(pixel/conj(0.15/pixel)))
  c=1/(conj(pixel-0.2)+conj(pixel+0.4)+cotan(7.5/pixel)-cosxx(1/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1786 {; Mandelbrot.
  z=1/(flip(pixel/conj(0.15/pixel)))
  c=1/(sin(pixel-0.2)+conj(pixel+0.1)+cotan(7.5/pixel)-cosxx(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1787 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(conj(pixel)-(flip(conj(1/z^z*z+z)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1788 {; Julia.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/cosxx(z*z+pixel*pixel):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1789 {; Mandelbrot.
  c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  z=1/(sqrt(pixel-conj(1/pixel))+cosxx(pixel-conj(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1790 {; Mandelbrot.
  z=1/((2*pixel-conj(5/pixel))+atan(pixel-conj(2.5/pixel)))
  c=1/pixel+conj(flip(tan(z*z))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1791 {
  z=1/pixel
  c=1/(pixel-(0.124/z*(0.524/pixel/z))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1792 {
  z=1/(pixel-1/conj(pixel)-1/flip(pixel))
  c=1/(pixel-(0.124/z*(0.524/pixel/z))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1793 {
  z=1/(conj(pixel)+sqrt(pixel)+log(pixel))
  c=1/(pixel-(0.124/z*(0.524/pixel/z))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1794 {
  z=1/(pixel-sin(1/pixel)-sinh(1/pixel))
  c=(1/(pixel-(0.124/z*(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1795 {
  z=1/(pixel-real(1/pixel)-sinh(1/pixel-0.25))
  c=(1/(pixel-(0.124/z*(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*pixel/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1796 {
  z=1/(pixel-cabs(sinh(5.5/pixel))-tanh(sin(1/pixel-0.25)))
  c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1797 {
  z=1/(pixel-cabs(cosh(5.5/pixel))-tanh(sin(1/pixel-0.25)))
  c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1798 {
  z=1/(pixel-cotanh(cosh(5.5/pixel))-tanh(sin(1/pixel-0.25)))
  c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1799 {
  z=1/(pixel-cotanh(cosh(5.5/pixel))-cosxx(sin(1/pixel-0.25)))
  c=(1/(pixel-(0.124/z*cos(0.524/pixel/z)))):
  z=0.124/pixel/c*c*c*(pixel+cos(2.5/pixel))/z^(1.23)
  |real(z)| <=4
  ;SOURCE: 39carr.frm
}


Carr1800 {
  z=(1/(pixel-(0.124/z*cos(0.524/pixel/z))))
  c=1/(pixel-sqr(1/z^z*z+z)/(atan(pixel))):
  z=z*z*z+c
  |real(z)| <=10
  ;SOURCE: 40carr.frm
}


Carr1801 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(pixel-(z+cos(sqr(z*1/(pixel-0.124))))):
  z=z*z+c
  |real(z)| <=10
  ;SOURCE: 40carr.frm
}


Carr1802 {; Mandelbrot.
  z=1/pixel
  c=1/(pixel-conj(z/(conj(pixel))*z/pixel+pixel/z)):
  z=z*z+c
  |real(z)| <=10
  ;SOURCE: 40carr.frm
}


Carr1803 {; Spider type.
  z=1/pixel
  c=1/(pixel-conj(z/(conj(pixel))*z/pixel+pixel/z)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1804 {; Mandelbrot.
  z=1/pixel
  c=1/(pixel-cosh(z/(cos(pixel))*z/pixel+pixel/z)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1805 {; Mandelbrot.
  z=1/asin(1/atanh(1/pixel-conj(1/pixel)))
  c=1/conj(conj(pixel))+1/pixel+z/pixel:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1806 {; Mandelbrot.
  c3=conj(tan(pixel)), c2=c3+conj(sinh(pixel))
  c=1/(sin(c3)+cos(c2))-conj(1/pixel)-flip(1/pixel)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1807 {; Mandelbrot.
  c3=conj(tan(pixel)), c2=(|c3|)+conj(sin(pixel))
  c=1/(conj(c3)+flip(c2))-asin(1/pixel)-atan(1/pixel)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1808 {; Mandelbrot.
  c3=sin(conj(pixel)), c2=(|c3|)+conj(atan(pixel))
  c=1/(conj(c3)+flip(c2))-asin(1/pixel)-atan(1/pixel)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1809 {; Mandelbrot.
  c3=asin(conj(pixel)), c2=(|c3|)+conj(cosxx(pixel))
  c=1/(conj(c3)+flip(c2))-asin(1/pixel)-atan(1/pixel)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1810 {; Mandelbrot.
  z1=conj(1/pixel)-flip(1/pixel)
  z=1/(pixel+sqrt(1/pixel)-log(1/pixel)-(|z1|))
  c=1/(pixel+sqrt(7/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1811 {; Mandelbrot.
  z1=conj(1/pixel)-flip(1/pixel)
  z=1/(pixel+0.45-sqrt(1/pixel)+log(2/pixel)+(|z1|)-cos(5/pixel))
  c=1/(pixel+sqrt(7/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1812 {; Mandelbrot.
  z1=conj(1/pixel)-flip(1/pixel)
  z=1/((pixel+0.45)-sqrt(1/pixel)-log(2/pixel)+(z1)-cos(5/pixel))
  c=1/(pixel-cos(1/pixel)-cosxx(1/pixel)+sqrt(7/pixel)-log(0.5/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1813 {; Mandelbrot.
  z=1/(flip(pixel)*conj(atan(5/pixel-0.724)))
  c=1/(flip(pixel)*tan(7/pixel-0.524)-flip(1/pixel)-conj(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1814 {; Mandelbrot.
  z=1/(conj(pixel)-(cos(7/pixel-0.524)+sin(1/pixel)-conj(1/pixel)))
  c=1/(pixel*real(5/pixel-0.724)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1815 {; Mandelbrot.
  z=1/(conj(pixel)-(cos(7/pixel-0.524)+sin(1/pixel)-conj(1/pixel)))
  c=1/(pixel-conj(z-1.1)*z*z^conj(cotanh(pixel-0.2))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1816 {; Mandelbrot.
  z=1/(conj(pixel)-(cos(7/pixel-0.524)+sin(1/pixel)-conj(1/pixel)))
  c=1/(pixel-conj(z-1.1)*z*z^conj(cotanh(5/pixel-0.2))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1817 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(pixel-(z-2.5^cosxx(pixel-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1818 {; Mandelbrot.
  c=conj(1/pixel)/exp(1/pixel)
  z=1/(pixel-(atan(1/pixel-(conj(c)-0.55)))+conj(1/pixel)+flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1819 {; Mandelbrot.
  c=conj(1/pixel)/sqr(sin(1/pixel))
  z=1/(pixel-(atan(1/pixel-(conj(c)-0.55)))+conj(1/pixel)+flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1820 {; Mandelbrot
  c=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel))
  z=1/(cos(pixel)-sqr(conj(exp(1.79/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1821 {; Julia.
  c=(1/pixel)/(pixel-flip(1/pixel)-conj(1/pixel))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1822 {; Mandelbrot.
  c=conj(1/pixel)/(pixel-sin(1/pixel)-conj(1/pixel))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1823 {; Spider.
  c=conj(1/pixel)/(pixel-sin(1/pixel)-conj(1/pixel))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1824 {; Mandelbrot.
  c=5/atan(1/pixel)/(pixel-sin(1/pixel)-conj(1/pixel))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1825 {; Mandelbrot.
  c=exp(1/pixel)/(conj(0.073*pixel-cos(1/pixel)-conj(1/pixel)))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1826 {; Mandelbrot.
  c=1/(pixel-conj(1/pixel)*cos(0.88/pixel))
  z=conj((1-conj(c)*cos(c))/conj(pixel-conj(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1827 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)*cos(0.88/pixel))
  c=conj((1-conj(z)*cos(z))/conj(pixel-conj(1/pixel))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1828 {; Mandelbrot.
  c=1/(pixel-conj(1/pixel)-flip(1.88/pixel))
  z=1/(flip(pixel)-conj(c+sin(1/pixel))*sin(c+1/c)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1829 {; Mandelbrot.
  c=1/(pixel-conj(1/pixel)-flip(1.88/pixel))
  z=1/(flip(pixel)-conj(c+sin(1/pixel))*sin(c+(0.8/c))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1830 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(flip(pixel)-conj(z+sin(1/pixel*1/z))*sin(z+(1/z))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1831 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(flip(pixel)-conj(z+sin(1/pixel*1/z))\
      *sin(z+(1/z))+exp(1/pixel+(1/z))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1832 {; Spider.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(flip(pixel)-conj(z+sin(1/pixel*1/z))\
      *sin(z+(1/z))+exp(1/pixel+(1/z))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1833 {; Mandelbrot.
  z=tan(1/pixel)/(flip(conj(pixel-tan(1/pixel)))-1.0)
  c=1/(flip(pixel)-conj(z+sin(1/pixel*1/z))\
      *sin(z+(1/z))+exp(1/pixel+conj(1/z))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1834 {; Mandelbrot.
  z=tan(1/pixel)/(cos(conj(pixel-tan(1/pixel)))-1.0)
  c=1/(flip(pixel)-conj(z+sin(1/pixel*1/z))\
      *sin(z+(1/z))+exp(1/pixel+conj(1/z))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1835 {; Mandelbrot.
  c=conj(1/pixel)/(cos(conj(pixel-tan(1/pixel)))-1.0)
  z=1/(flip(pixel)-conj(c+sin(1/pixel*1/c))*sin(c+(1/c))+exp(1/pixel+conj(1/c))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1836 {; Mandelbrot.
  c=(tan(1/pixel))/(cos(conj(pixel-tan(1/pixel)))-1.0)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1837 {; Mandelbrot.
  c=(tan(1/pixel))/(cos(conj(pixel-tan(1/pixel)))-1.75)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1838 {; Mandelbrot.
  c=(tan(1/pixel))/(cos(conj(pixel-tan(1/pixel)))-1.75)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)-1):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1839 {; Mandelbrot.
  c=(tan(1/pixel))/(cos(conj(pixel-tan(1/pixel)))+(-0.7456,0.2))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)-1/c):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1840 {; Mandelbrot.
  c=1/(pixel-((tan(1/pixel))/(cos(conj(pixel-tan(1/pixel)))-1)))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1841 {; Mandelbrot.
  z=1/(cos(conj(pixel*pixel-tan(1/pixel)))-1)
  c=1/(pixel-cos(1/pixel)-conj(1/pixel))-sqrt(1/pixel):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1842 {; Mandelbrot.
  z=1/(cos(conj(pixel*pixel-tan(1/pixel+conj(0.88/pixel))))-1)
  c=1/(pixel-cos(1/pixel+0.88/pixel)-conj(1/pixel))-sqrt(1/pixel):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1843 {; Mandelbrot.
  z=(flip(1/pixel))/(conj(1/pixel+0.556*(5/flip(pixel))))
  c=1/(pixel-tan(1/pixel))*(0.94*cos((z+(7/pixel))/conj(pixel-1))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1844 {
  z=(conj(1/pixel*flip(0.91/pixel))-1)/((pixel))
  c=1/(pixel-tan(1/pixel))+(-0.7645,0.2):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1845 {; Mandelbrot.
  z=1/(pixel-flip(1/pixel)-tan(|1/pixel|)-conj(1/pixel))
  c=1/(pixel+(-1.7456,0.2)-atan(1/pixel-cosh(|z|)-conj(|z|))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1846 {; Spider type.
  z=1/(pixel-flip(1/pixel)-tan(|1/pixel|)-conj(1/pixel))
  c=1/(pixel-atan(1/pixel-cosh(|z|)-conj(|z|))-conj(1/(exp(pixel-0.85)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1847 {; Spider type.
  z=1/(pixel-exp(1/pixel)-tan(|1/pixel|)-conj(1/pixel))
  c=1/(pixel-asinh(1/pixel-cosxx(|z|)-conj(|z|))-conj(1/(exp(pixel-0.85)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1848 {; Julia.
  z=1/(pixel-exp(1/pixel)-tan(|1/pixel|)-conj(1/pixel))
  c=1/(pixel-asinh(1/pixel-cosxx(|z|)\
       -conj(|z|))-conj(1/(exp(pixel+1.85)))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1849 {; Julia.
  z=1/(pixel-exp(1/pixel)-sinh(|1/pixel|)-conj(1/pixel))
  c=1/(pixel-asinh(1/pixel-cos(|z|)\
      -conj(|z|))-cosxx(1/(exp(pixel+1.85)))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 40carr.frm
}


Carr1850 {
  z=1/(|pixel-conj(1/pixel)-flip(1/pixel)|)
  c=1/(pixel-acosh(1/pixel-cosxx(|z|)\
       -conj(|z|))-conj(1/(exp(pixel+1.85)))):
  z=z*z+c
  z=conj(z*z+c)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1851 {
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)-(sqrt(1/(exp(pixel+0.75)))))
  c=1/(pixel-acosh(1/pixel-cosxx(|z|)\
       -conj(|z|))-conj(1/(exp(pixel+1.85)))):
  z=(z*z+c)
  z=conj(z*z+c)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1852 {; Mandelbrot.
  z1=1/(conj(pixel)-sqrt(1/pixel)-log(1/pixel)-0.9)
  z=1/(pixel-conj(1/(z1))-(exp(1/(exp(pixel+0.45)))))
  c=1/(pixel+((sqrt(1/pixel))/(log(1/pixel)))-conj(z1)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1853 {; Mandelbrot.
  z1=1/(pixel-conj(1/pixel)-flip(1/pixel)+0.5)
  z=(exp(-z1))/sin(pixel)
  c=conj(conj(conj(conj(1/pixel-0.5)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1854 {
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(pixel-cosxx(1/(sqr(cos(pixel))))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1855 {; Mandelbrot.
  z=1/(pixel-conj(1/pixel)-exp(1/pixel))
  c=1/(pixel+cosxx(1/(sqr(cos(pixel+conj(1/pixel)))))-1):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1856 {
  c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  z=pixel/(6+c):
  z=z*z+c
  z=z*z+conj(c)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1857 {; Mandelbrot.
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=conj(pixel-conj(1/pixel))/(4+tan(conj(z*z-conj(7/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1858 {; Spider type.
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=conj(pixel-conj(1/pixel))/(4+tan(conj(z*z-conj(7/pixel)))):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1859 {; Julia.
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=conj(pixel-conj(1/pixel))/(4+tan(conj(z*z-conj(7/pixel)))):
  z=z*z+c
  c=((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1860 {
  c1=(-0.7456,0.2)
  c=(tan(1/pixel)/tan(pixel-conj(1/pixel)-flip(1/pixel)))/9+c1
  z=(tan(1/pixel-(c*c)))/(9+c1+c):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1861 {; Mandelbrot.
  c1=1/(pixel-sin(1/pixel)-cos(1/pixel))
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(pixel-c1+z):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1862 {; Mandelbrot.
  z=(1/(pixel-conj(1/(conj(pixel)))-flip(1/(conj(pixel)))))
  c=1/(tan(pixel)*conj(5/pixel-0.724)):
  z=(z*z+c)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1863 {; Carr-brot-2. 
  z=log(3.1416)+conj(1/pixel):
  z=z-(sqr(z)+pixel)
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1864 {; Carr-brot-3. 
  z=sqrt(5.1416)+(1/pixel):
  z=z-(sqr(z)+(pixel))
  z=z*z+z
  |sin(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1865 {; Carr-brot-4 
  z=1/(pixel-sqrt(conj(pixel))-log(pixel)):
  z=z-(sqr(z)+(pixel))
  |sin(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1866 {
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=conj(pixel-conj(1/pixel))/(4+tan(conj(z*z-conj(7/pixel)))):
  z=z*z+c
  c=conj((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1867 {
  z=1/(pixel-sin(1/pixel)-cos(1/pixel))
  c=conj(pixel-conj(1/pixel))/(4+tan(conj(z*z-conj(7/pixel)))):
  z=z*z+c
  c=sin((1+flip(imag(sqrt(sin(c)))))*real(sqrt(tan(c)))/9+z)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1868 {; Mandelbrot.
  z=1/tan(pixel)/(-0.7456,0.2)/pixel
  c=1/tan(pixel)/(-0.3,0.6)/pixel:
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1869 {; Spider.
  z=1/tan(1/pixel)
  c=1/(pixel-conj(1/z^z*z+z)):
  z=z*z+c
  c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1870 {; Modified Newton.
  z=cos(pixel-1/pixel)
  c=(-0.7456,0.2):
  z3=z*z*z
  z4=z3*z
  z=(3*z4+c)/(4*z3)
  .004 <=|z4 - c|
  ;SOURCE: 41carr.frm
}


Carr1871 {; Modified Newton.
  z=tan(pixel-conj(1/pixel))
  c=(0.3,0.6):
  z3=z*z*z
  z4=z3*z
  z=(3*z4+c)/(4*z3)
  .004 <=|real(z4-c)|
  ;SOURCE: 41carr.frm
}


Carr1872 {; Modified Sylvie Gallet formula.  
  z=conj(1/pixel), c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  compt=0, limit=real(0.3,0.6), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z| <=bailout
  ;SOURCE: 41carr.frm
}


Carr1873 {  
  c1=1/(pixel-sin(1/pixel))
  z1=c1-conj(1/pixel)
  c=1/(pixel-(z1+c1)/pixel)
  z=1/(pixel-(c-cos(z1))/(z1*c1)):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1874 {; Modified Lee Skinner formula.
  p=1/(pixel-conj(1/pixel)-flip(1/pixel))
  t3=3*cos(p)
  t2=p*p
  a=(t2+1)/t3
  b=2*a*a*a+(t2-2)/t3
  aa3=a*a*3
  z=0-a:
  z=z*z-aa3*z+b
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1875 {; Modified Lee Skinner formula.
  p=1/(pixel-conj(1/pixel)-flip(1/pixel))
  t3=3*1/cos(p)
  t2=tan(p*p)
  a=(t2+(1/pixel))/t3
  b=2*a*a*a+(t2-2)/t3
  aa3=a*a*3
  z=0-a:
  z=z*z-aa3*z+b
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1876 {; Mandel-Julia.
  z=1/(pixel-real(1/pixel)+flip(imag(1/pixel)*2.924))
  c=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+(c+(-0.3,0.6))
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1877 {; Mandel-Julia.
  z=1/(pixel-real(1/pixel)+flip(imag(1/pixel)*2.924))
  c=1/(pixel-sin(1/pixel)-cosxx(1/pixel)):
  z=z*z+(c+(-0.3,0.6))
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1878 {; Mandel-Julia.
  z=1/(pixel-real(1/pixel)+flip(imag(1/pixel)*2.924))
  c=1/(pixel-sin(1/pixel)-cosxx(1/pixel)):
  z=z*z+(c+(-0.8,0.2))
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1879 {; Julia.
  z=1/(pixel-real(1/pixel)+flip(imag(1/pixel)*0.924))
  c=1/(pixel-sin(1/pixel)-cosxx(1/pixel)):
  z=z*z+(c+(-0.6,0.45))
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1880 {
  z=1/(pixel-real(1/pixel)+flip(imag(1/pixel)*0.924))
  c=1/(pixel-sin(1/pixel)-exp(2/pixel)):
  z=z*z+(c+(-0.6,0.05))
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1881 {; Mandel-Julia.
  z=1/(pixel-real(1/pixel)+flip(imag(1/pixel)*0.924))
  c=1/(pixel-sin(1/pixel)-exp(2/pixel)):
  z=z*z+(c+(0.09,-0.71))
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1882 {; Mandel-Julia.
  z=1/(pixel-real(1/pixel)+flip(imag(1/pixel)*0.924))
  c=1/(pixel-sqr(1/pixel)-exp(2/pixel)):
  z=z*z+(c+(0.39,-0.2491))
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1883 {; Julia.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=(z*z)+(-0.7456,0.2)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1884 {; Mandel-Julia.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(pixel-abs(imag(z)-real(z))+flip(1-abs(1-real(z)-imag(z)))):
  z=z*z+c+(-0.7456,0.2)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1885 {; Mandel-Julia.
  c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  z=1/(pixel-abs(cos(c)-conj(c))+flip(cabs(tanh(c)-conj(c)))):
  z=z*z+c+(0.39776,-0.009)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1886 {; Modified FractalFenderC.
     ; Edited for Fractint v. 20 by George Martin, 10/98
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  x=|z|:
  IF (x>1)
    z=cosh(z)+pixel
  ENDIF
  z=sqr(z)+pixel
  x=|z|
  x<=4
  ;SOURCE: 41carr.frm
}


Carr1887 {
  z=pixel, c=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z*z/(5*pixel)+conj(z*z)+c+(0.39776,-0.009)
  |z| <=4
  ;SOURCE: 41carr.frm
}


Carr1888 {; Julia.
  c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  z=1/(pixel-(3/c-c/4)-conj(1/pixel)):
  z=z*z+c+(0.35776,-0.08294)
  |real(z)| <=4
  ;SOURCE: 41carr.frm
}


Carr1889 {; Modification of Sylvie Gallet frm. Redone by Sylvie
  z=pixel, c=z, test1=1
  b1=16, b2=0.0001:
  test1=(1-test1)
  z2=z*z, z4=z2*z2, z1=(z4*z-1)/(4*z4 + (z4==0))
  z=(z2+c+(0.35776,-0.08294))
  ((|z| <= b1)*test1) || ((|z1| >= b2)*(1-test1))
  ;SOURCE: 41carr.frm
}


Carr1890 {; Julia.
  c=pixel
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c+(0.34776,-0.08094)
  |z| <= 4
  ;SOURCE: 41carr.frm
}


Carr1891 {; Julia.
  c=pixel
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)):
  z=z*z+c+(0.34899,-0.08294)
  |z| <= 4
  ;SOURCE: 41carr.frm
}


Carr1892 {; Julia or not ?
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=sin((1+flip(imag(sqrt(sin(z)))))*real(sqrt(tan(z)))/9+z):
  z=z*z+c+(0.34899,-0.08294)
  |z| <= 4
  ;SOURCE: 41carr.frm
}


Carr1900 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = z, iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((z2+c)/(|c|))*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1901 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = z, iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z*z+c+(0.1/pixel))*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1902 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel-1/pixel, c=pixel,
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1903 {; Modified Sylvie Gallet frm.  REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c=pixel,
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4+z2, z1 = (z6*z-2)/(4*z6 + (z6==0))
  z = (z2+c)*test1 + (z-tan(z1))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1904 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((pixel-z2+c)/(pixel-c*c))*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1905 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((z^4)*(c^4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1906 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c =pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((z4)*(c^4)+(-0.7456,0.2))*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1907 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (sqr(sqr(z)+c^4)-c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1908 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((4 * z * z) / (1/sin(z) + 4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1909 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =  c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((4 * z * z) / (1/cotanh(z) + 4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1910 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =  c = 1/(pixel-conj(1/pixel)-flip(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = ((4 *sin(z2)) / (z + 4) + c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 && test0 && test1))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1911 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =  c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z2+c)*test1 + (z-z1)*(1-test1) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-tanh(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1912 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 3, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = 0.79*(z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-tanh(cabs(test3 && test0 && test1))))
  iter = real(iter)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1913 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = (pixel-conj(1/pixel)-flip(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = 0.79*(z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-tanh(cabs(test3 && test0 && test1))))
  iter = real(iter)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1914 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (z2+c-0.099/pixel)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1915 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (real(z2)*z4+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1916 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0))
  z = (sqr(z1)*z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1917 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =imag(pixel), c =(tan(pixel)+sin(pixel)-1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1918 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =imag(pixel), c =pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1919 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z =imag(pixel), c =pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  c=z+c/2.125
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1920 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = c = pixel-1/log(1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1921 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = c = pixel-1/log(1/pixel)+1/sqrt(1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+4
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1922 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c =(-0.63,-0.4)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+0.9
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1923 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c =(-0.7456,0.2)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1924 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c =(-0.7456,0.2)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  c=z+c/2.125
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1925 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.21)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1926 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.21)*(0.3,0.6)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1927 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z-1/pixel|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1928 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.2)/pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+1/c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1929 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = sqr(-0.63,-0.4)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1930 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z = pixel, c = (-0.7456,0.21)*(0.3,0.6)
  iter = 1, rad = 6, center = (4.0,0.4)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0 :
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z6*z-1)/(4*z6 + (z6==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+2
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1931 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c = (1/(1/(1/(1/pixel))))+pixel, z=pixel
  iter = 1, rad = 6, center = (4.0,0.4)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1932 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+(-0.7564,0.21978)+(c/10))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1933 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=exp(pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+(-0.7564,0.21978)+(c/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+2.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1934 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=exp(pixel+0.5)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+(-0.7456,0.10)+(c/7*pixel))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+2.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1935 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=((-0.7456,0.39562)*(|(-0.7456,0.2)|<=0)+(-0.7456,0.2))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(4.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1936 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel-(1/pixel)^4.13, c=(-0.7456,0.2)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+5.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1937 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=cotan(pixel*pixel+1), c=sqr(1/pixel*0.91/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1938 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c=sin(pixel)/2^pixel, z=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1939 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=c=(conj(1/pixel)^2.32)-1.25
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1940 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=c=(tan(1/pixel)^2.32)-1.25
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1941 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel, c=(0.9/-2.48)-conj(0.2/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1942 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel+sin(pixel)-(2.5/pixel-0.124)), c=sin(z*pixel-1/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1943 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel+tan(pixel)-(2.5/pixel-0.124))
  c=sin(sin(z)*pixel-cotanh(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1944 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel+cos(pixel)-(2.5/pixel-0.124))
  c=sin(tan(z)*pixel-cosxx(1/pixel))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1945 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c=(pixel-1)/(flip(1/pixel*0.91/pixel)+sin(1/pixel))
  z=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c+real(z/5))*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1946 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=(2*pixel)/(conj(1/pixel*0.88/pixel))
  c=(1.9/pixel)/cosh(z*z-1.2/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75;(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1947 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=0.75/pixel-sqrt(1/pixel)
  c=sin(1/pixel)/cosxx(1.5/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1948 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=conj(0.75/pixel-sqrt(1.5/pixel))
  c=sin(1/pixel)/cosxx(1.5/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = center+rad/(pix-center), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1949 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  b1=1/(conj(pixel)-sqrt(1/pixel)-log(1/pixel)-0.9)
  z=pixel-(1/(pixel-conj(1/(b1))-(exp(1/(exp(pixel+0.45))))))
  c=1/(pixel+((sqrt(1/pixel))/(log(1/pixel)))-conj(b1))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1950 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  b1=1/(conj(pixel)-sqrt(1/pixel)-log(1/pixel)-0.9)
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=1/(pixel+((sqrt(1/pixel))/(log(1/pixel)))-conj(b1))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = ((4 *z2) / (z + 4) + c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1951 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel))
  c=sin(1/pixel)/cosxx(1.5/pixel)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = ((4 *z2) / (z + 4) + c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1952 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel-conj(1/pixel)-exp(1/pixel))
  c=1/(pixel+cosxx(1/(sqr(cos(pixel+conj(1/pixel)))))-1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1953 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c1=(-0.7456,0.2)
  c=(tan(1/pixel)/tan(pixel-conj(1/pixel)-flip(1/pixel)))/9+c1
  z=(tan(1/pixel-(c*c)))/(9+c1+c)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1954 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  c1=(-0.3,0.6)
  c=(cos(1/pixel)/cos(pixel-conj(1/pixel)-flip(1/pixel)))/9+c1
  z=(tan(1/pixel-(c*c)))/(9+c1+c)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+3.75
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1955 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/(pixel-sin(1/pixel)-tan(1/pixel))
  c=conj(pixel-conj(1/pixel))/(4+tan(conj(z*z-conj(7/pixel))))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1956 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=1/tan(1/pixel)
  c=1/(pixel-conj(1/z^z*z+z))
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1957 (XYAXIS) {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
   ; limit = real portion of P1    (requires periodicity=0)
   ; iter <= limit ==> Mandelbrot set of  z^7+c
   ; iter >  limit ==> Newton's method applied to  z^6-1 = 0
  limit = real(p1), test0 = 1, test3=0, iter = 1 
  z = 1/(pixel-sin(1/pixel)-tan(1/pixel)) 
  c = 1/(pixel-conj(1/pixel)-flip(1/pixel)) 
  b1 = 64, b2 = 0.000001, zn = pixel :
  test1 = (iter<limit), test2=(iter!=limit), test0 = 1-test0 
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, d = 4*z4*z 
  z = (z*n+z+c)*test1 + (z-n/(d + (d==0)))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 * test0 * test1))
  iter = real(iter)+1          ; (1.099,0.0)
  ((|z|<=b1)*test1) || ((|n|>=b2)*(1-test1))
  ;SOURCE: 42carr.frm
}


Carr1958 (XYAXIS) {; Modified Sylvie Gallet frm. [101324,3444],  
   ; Revised for compatability with Fractint v. 19.3 4/12/96
   ; Version of this formula in original 42carr.frm should be deleted.
   ; limit = real portion of P1    (requires periodicity=0)
   ; iter <= limit ==> Mandelbrot set of  z^7+c
   ; iter >  limit ==> Newton's method applied to  z^6-1 = 0
  limit = real(p1), test0 = 1, test3=0, iter = 1 
  z = 1/(pixel-sin(1/pixel)-tan(1/pixel)) 
  c = 1/(pixel-conj(1/pixel)-flip(1/pixel)) 
  b1 = 64, b2 = 0.000001, zn = pixel :
  test1 = (iter<limit), test2=(iter!=limit), test0 = 1-test0 
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, d = 4*z4*z 
  z = (z*n+z+c+(-0.7456,0.2))*test1 + (z-n/(d + (d==0)))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 * test0 * test1))
  iter = real(iter)+2
  ((|z|<=b1)*test1) || ((|n|>=b2)*(1-test1))
  ;SOURCE: 42carr.frm
}


Carr1959 {; Modified Sylvie Gallet frm. [101324,3444], REVISED 4/12/96 
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
   ; limit = real portion of P1    (requires periodicity=0)
   ; iter <= limit ==> Mandelbrot set of  z^7+c
   ; iter >  limit ==> Newton's method applied to  z^6-1 = 0
  limit = real(p1), test0 = 1, test3=0, iter = 1 
  z=pixel, c =pixel
  b1 = 64, b2 = 0.000001, zn = pixel :
  test1 = (iter>limit*(1/-pixel)), test2=(iter!=limit), test0 = 1-test0 
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, n = z4*z2-1, d = 4*z4*z 
  z = (z*n+z+c)*test1 + (z-n/(d + (d==0)))*(1-test1)
  test3 = (test3 || (|z|>b1))
  z = z*(1-(test3 * test0 * test1))
  iter = iter-3.75
  ((|z|<=b1)*test1) || ((|n|>=b2)*(1-test1))
  ;SOURCE: 42carr.frm
}


Carr1960 {; Modified Sylvie Gallet Frm.
  z= c=1/(pixel-conj(1/pixel)-flip(1/pixel))
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1961 {; Modified Sylvie Gallet frm.
  z=1/(pixel-conj(1/pixel)-flip(1/pixel)), c=(-0.63,0.4)
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1962 {; Modified Sylvie Gallet frm.
  z =imag(pixel), c =tan(pixel)+sin(pixel)-1/pixel
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1963 {; Modified Sylvie Gallet frm.
  z= c =pixel-1/log(1/pixel)
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1964 {; Modified Sylvie Gallet frm.
  z= c =pixel-1/sqrt(cos(1/pixel))
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1965 {; Modified Sylvie Gallet frm.
  z= c =pixel
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=(z+c/2.125)*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1966 {; Modified Sylvie Gallet frm.
  z= c =pixel
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=tan(c)*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(z)|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1967 {; Modified Sylvie Gallet frm.
  z=c=pixel
  compt=0, limit=real(p1), bailout=4
  p=conj(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |real(1-z)|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1968 {; Modified Sylvie Gallet frm.
  z=c=pixel
  compt=0, limit=real(p1), bailout=4
  p=(-0.7259,0.205999) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1969 {; Modified Sylvie Gallet frm.
  z=c=pixel+(-0.743380900000982,-0.131850030300002) 
  compt=0, limit=real(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+(-0.7564,0.21978)+(c/10)
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1970 {; Modified Sylvie Gallet frm.
  c=z=pixel 
  compt=0, limit=real(1.5/p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1971 {; Modified Sylvie Gallet frm.
  c=z=pixel 
  compt=0, limit=real(p1/pixel), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1972 {; Modified Sylvie Gallet frm.
  c=z=pixel 
  compt=0, limit=sqrt(p1), bailout=4
  p=(-0.743380900000982,-0.131850030300002) :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+1
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1973 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
  z=pixel
  c=pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = abs(p1/pixel)
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0: 
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-1)/(4*z4 + (z4==0)) 
  z = (z2+c)*test1 + ((z-z1)*(1-test1)) 
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1974 {; Modified Sylvie Gallet frm.
  c=z=pixel, d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/5)), bailout=4
  p=(0.9/-2.48)-1.00763 :
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c-real(d/5*pixel)
  compt=compt+0.39
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1975 {; Modified Sylvie Gallet frm.
  z=exp(pixel), c=1+flip(imag(pixel))+conj(1/pixel) 
  d=log(1/pixel-conj(1/pixel))
  compt=0, limit=(abs(p1/10)), bailout=4.9
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c-real(d/5*pixel)
  compt=compt+0.19
  |z|<=bailout
  ;SOURCE: 42carr.frm
}


Carr1976 {; Modified Sylvie Gallet frm.   REVISED 4/12/96
   ; Revised for compatability with Fractint v. 19.3
   ; Version of this formula in original 42carr.frm should be deleted.
   ; Revised for Fractint v20 by G. Martin
  z=sqr(pixel)
  c=pixel-(1.099,0.0)/3
  iter=1, rad=6, center=(1.0,0.1)
  pix=exp(10*pixel+(8.0,-5))*(-0.1,-0.95)
  zn=(center+rad/(pix-center)), limit=real(p1/(tan(1/pixel)))
  test0=1, b1=16, b2=0.0001, test3=0: 
  test1=(iter<limit), test0=1-test0, test2=(iter!=limit)
  z=(z-zn)*test2+zn
  z2=z*z, z4=z2*z2, z1=(z4*z-10*pixel)/(4*z4 + (z4==0))
  z=(z2+c)*test1+((z-z1)*(1-test1)) 
  test3=(test3 || (|z|>b1))
  z=(z*(1-(test3 && test0 && test1)))
  iter=iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42carr.frm
}


Carr1977 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+1
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1978 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.7456,0.2), p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(1/exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1979 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, c4=c^4, p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(1/exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = ((z^4)*c4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1980 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.63,-0.4), p4=pixel^4, p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1/(1/exp(1/pixel)))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = 0.79*(z4*p4+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.299,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1981 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(1/pixel))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1982 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, dit=-1/pixel+(1.099,0.0), rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter + dit
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1983 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel , p10=10*pixel, th1 = tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+z4+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1984 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel, th1 = tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1985 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=pixel, p10=10*pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z6=z4*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+z6+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1986 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel, c=(-0.7456,0.2), p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1987 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=1/pixel, c=1/pixel, p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1988 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=c=1/(pixel-conj(1/pixel)-flip(1/pixel)) 
  p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1989 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=pixel-conj(pixel/5), p10=10*pixel, th1=tanh(1), c=z-0.099/pixel
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+tan(z1)+(1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1990 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z=(pixel-conj(pixel/5)), c=(-0.7456,0.2)-0.099/pixel
  p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+3.75   ; (1.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1991 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z =imag(pixel), c =pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  p10=10*pixel, iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = (z*(1-(test3 && test0 && test1)))
  iter = iter+(3.099,0.0)
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1992 {; Modified Sylvie Gallet frm.
          ; Revised for Fractint v20 by G. Martin
  z = c = pixel+1/log(pixel), p10=10*pixel, th1=tanh(1)
  iter = 1, rad = 6, center = (1.0,0.1)
  pix = exp(p10+(8.0,-5))*(-0.1,-0.95)
  zn = (center+rad/(pix-center)), limit = real(p1*cos(pixel/5))
  test0 = 1, b1 = 16, b2 = 0.0001, test3=0:
  test1 = (iter<limit), test0 = 1-test0, test2=(iter!=limit)
  z = (z-zn)*test2 + zn
  z2 = z*z, z4 = z2*z2, z1 = (z4*z-p10)/(4*z4+(z4==0))
  z = (z2+c)*test1 + ((z-z1)*(1-test1))
  test3 = (test3 || (|z|>b1))
  z = z*(1-th1*(test3 && test0 && test1))
  iter = iter+(1.099,0.0)+zn/z4
  ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
  ;SOURCE: 42acarr.frm
}


Carr1993 {; Modified Sylvie Gallet frm.
  z=imag(pixel), c=pixel-((tan(pixel)+sin(pixel)-1/pixel))/10
  compt=0, limit=real(p1*cos(pixel/5)), bailout=4
  p=(-0.743380900000982,-0.131850030300002):
  test=(compt<limit)
  c=c*test+p*(1-test)
  z=z*z+c
  compt=compt+(1.099,0.0)
  |z|<=bailout
  ;SOURCE: 42acarr.frm
}


Carr1994 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444], 1996
  z=c=1/pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0:
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t=1-(t1||t2||t3), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr1995 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
                  ; Added variable "newpixel". G. Martin, 6/27/99
  newpixel=real(pixel)+flip(abs(imag(pixel)))
  z=1/newpixel, c=(-0.7456,0.2), c1=1.5*z, c2=2.25*z, c3=3.375*z
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t=1-(t1||t2||t3), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3
  z=z*z+c
  iter=iter+1
  |z| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr1996 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z, p0=0.099/pixel
  l1=real(p1), l2=imag(p1), l3=real(p2), bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3)
  t=1-(t1||t2||t3), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3
  z=z*z+c-p0
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr1997 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0 :
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr1998 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z=c=pixel, c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4) 
  z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  |real(z)| <= bailout
  ;SOURCE: 42acarr.frm
}


Carr1999 (XAXIS) {; Modified Sylvie Gallet frm. [101324,3444],1996
  z = c = pixel+1/log(pixel)
  c1=1.5*z, c2=2.25*z, c3=3.375*z, c4=5.0625*z
  l1=real(p1), l2=imag(p1), l3=real(p2), l4=imag(p2)
  bailout=16, iter=0, pp2 = pixel/imag(p2):
  t1=(iter==l1), t2=(iter==l2), t3=(iter==l3), t4=(iter==l4)
  t=1-(t1||t2||t3||t4), z=z*t, c=c*t + c1*t1 + c2*t2 + c3*t3 + c4*t4 + pp2
  z=z*z+c
  iter=iter+1
  (|real(z)|) <= bailout
  ;SOURCE: 42acarr.frm
}

