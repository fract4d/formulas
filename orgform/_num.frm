

0008 {
  z = pixel:
  z = pixel^z+sqr(z)-pixel/z
  ;SOURCE: 99msg.frm
}


000b {
  z = pixel^p1:
  z = sqr(z^p2)-pixel^p3
  ;SOURCE: 99msg.frm
}


001 (YAXIS) {
  z = pixel:
  z = z*z + pixel
  z = fn1(z) + p1
  ;SOURCE: damion.frm
}


001aj {; Arno Jennen
  z=|pixel|+pixel+cosxx(pixel):
  z=fn1(z-5.75)
  |(z)|<78
  ;SOURCE: 01aj.frm
}


001j {
  z = c = pixel:
  z = ((z*z+1)^2 / z*(z*z-1)) * c
  |c| <=1
  ;SOURCE: kgnew.frm
}


002 (XYAXIS) {
  z = pixel:
  z = fn1(z-c) + z + p1
  z <= 100
  ;SOURCE: damion.frm
}


002aj {; Arno Jennen
  z=|pixel|-pixel+flip(pixel):
  z=fn1(z+14)
  |(z)|<78
  ;SOURCE: 01aj.frm
}


003 (XYAXIS) {
  z = pixel:
  z = fn2(z) + fn1(z) + p1
  z <= 4
  ;SOURCE: damion.frm
}


003aj {; Arno Jennen
  z=|pixel^14|+pixel+exp(pixel):
  z=(z-12/fn1(z))
  |(z)|<65
  ;SOURCE: 01aj.frm
}


004 { 
  z = pixel:
  z = pixel + fn1(z)  + p1
  |z| <=100
  ;SOURCE: damion.frm
}


005 (XYAXIS) {
  z = rand = pixel:
  z = fn1(z) + pixel + p1
  z = z*z + z + p2
  ;SOURCE: damion.frm
}


006 {
  z = pixel:
  z = fn1(z)*z + pixel + p1
  |z| <= 100
  ;SOURCE: damion.frm
}


007 {
  z = pixel:
  z = z*z + p1
  z = fn1(z) + pixel
  ;SOURCE: damion.frm
}


008 {
  z = pixel:
  z = z+z+z + p1
  z = cos(c) * cos(z)
  ;SOURCE: damion.frm
}


009 { 
  z = pixel:
  z = (Z+PIXEL) + C +p1
  Z = fn1(Z)
  ;SOURCE: damion.frm
}


01-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


010 {
  Z = PIXEL:
  Z = Z*Z*Z 
  Z = fn1(z) + fn2(c) + p1
  ;SOURCE: damion.frm
}


011 {
  z = pixel:
  z = fn1(z)*z + c + p1
  z = fn2(z)
  ;SOURCE: damion.frm
}


012 { 
  z = pixel:
  z = Sin(cos(z)) * Tan(cotan(z)) + p1
  z = pixel + z
  ;SOURCE: damion.frm
}


013 {
  z = pixel:
  z = cos(z) + p1
  z = conj(z) + flip(z)
  ;SOURCE: damion.frm
}


014 (PI_SYM) {
  z = pixel:
  z = z*z + fn1(c) + p1
  z = tan(z) + cotan(z)
  |z| <= 32
  ;SOURCE: damion.frm
}


015 (XYAXIS) {
  z = pixel:
  z = fn1(z+c) * (z-c) + atan(z) 
  z = Cos(z) + pixel  + p1
  |z| <=128
  ;SOURCE: damion.frm
}


016 {
  z = pixel:
  z = sin(z+c) * (z-c) + fn1(z) 
  z = cos(z) + p1
  ;SOURCE: damion.frm
}


017 (XYAXIS) {
  z = 0:
  z = Z*Z*Z + pixel
  z = fn1(z) + z  + p1
  |z| <=8
  ;SOURCE: damion.frm
}


018 (XAXIS) {
  z = pixel:
  z = z*z + cos(z) + p1
  z = fn1(z) + pixel
  ;SOURCE: damion.frm
}


019 (PI_SYM) {
  z = pixel:
  z = z*z + z + fn1(z) + p1
  z = pixel + sqr(cosh(z*z)) + c
  ;SOURCE: damion.frm
}


01A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c*c
  z=sqr(z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


02-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


020 (XYAXIS) {
  z = pixel:
  z = z*c + Cos(z)*z
  z = z*z*z - pixel + p1
  ;SOURCE: damion.frm
}


021 {
  z = pixel:
  z = fn1(cos(z))*z + p1
  z = z + z * z + pixel
  |z| <= 32
  ;SOURCE: damion.frm
}


022 {
  z = pixel:
  z = z * fn1(z) + pixel + p1
  z = Tan(z) + Cos(z)
  ;SOURCE: damion.frm
}


023 {
  z = pixel:
  z = fn1(z) * z * z + abs(c) + p1
  z = c + z*z + pixel
  ;SOURCE: damion.frm
}


024 {
  z = pixel:
  a = fn1(z) + cos(z) + pixel + p1
  z = sin(a) + sqr(z*a)
  ;SOURCE: damion.frm
}


025 {
  z = pixel:
  a = z*z + pixel + cos(tan(z))
  z = a + a + pixel
  z = z*a + p1
  ;SOURCE: damion.frm
}


026 {
  z = 0, c = pixel:
  a = fn1(z*z) * z + p1
  z = a + a + z + c
  ;SOURCE: damion.frm
}


027 (XYAXIS) {
  z = pixel, z = Sqr(z + c):
  z = z * fn1(z) + c + p1
  z <= 250
  ;SOURCE: damion.frm
}


028 {
  z = pixel:
  a = fn1(3.14) + p1
  z = a + cos(z)*z
  z <=256
  ;SOURCE: damion.frm
}


029 {
  z = pixel:
  a = pixel + a <= z
  b = pixel + a >= z
  z = fn1(a) + fn1(z) + p1
  z = fn1(b) + cos(z)
  z = fn1(3.14) + z*z
  ;SOURCE: damion.frm
}


02A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z*z) + c*c
  z=sin(z*z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


03-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c-0.14
  z=sin(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


030 { 
  z = pixel:
  a = pixel + a <= z
  b = pixel + a >= Sqrt(z)
  z = fn1(z) + a  + p1
  z = (a*z) + z + b
  ;SOURCE: damion.frm
}


031 {
  z = pixel:
  a = pixel + a <= z
  b = pixel + a >= z
  z = fn1(z) + cos(z*z) + p1
  z = a*b + z
  ;SOURCE: damion.frm
}


032 (PI_SYM) {
  z = pixel:
  a = pixel + a <= z
  b = pixel + z >= z
  z = fn1(z) + pixel + p1
  z = (a*z) + z*z
  ;SOURCE: damion.frm
}


033 (PI_SYM) {
  z = pixel:
  a = pixel + a
  b = fn1(a) + z >= z
  z = (z*z) + b + p1
  |z| <= 4
  ;SOURCE: damion.frm
}


034 {
  z = pixel:
  a = fn1(z) + c
  b = z*z + pixel  
  z = sin((a + z) / (b + z)) + p1
  ;SOURCE: damion.frm
}


035 {
  z = pixel:
  a = cosh(sin(z)) + z
  b = pixel + a >= z
  z = b + fn1(a) + p1
  ;SOURCE: damion.frm
}


03A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sin(z) + c*c-0.14
  z=sin(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


04-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


040797-001 {; Linda Allison
  z = c = pixel:
  z2 = (1/z ^ p1)
  z = fn1(c * (1 - z2 ^ z2)/(1 + z2 ^ z2))
  |z| <= p2
  ;SOURCE: 97msg.frm
}


04A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + cosxx(z) + 1/pixel:
  z=sqr(z) + c*c-0.14
  z=sqr(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


05-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=sqr(z) + c-0.14
  z=sqr(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


051597-002 {; Linda Allison May 15, 1997
  z=0
  c=log(sqr(sqr(pixel))*pixel)*0.2:
  z2=fn1(z)+c
  z=c*(1-z2*z2)/(1+z2*z2)
  |z|<=p1
  ;SOURCE: 97msg.frm
}


051597-002-m1 {; Linda Allison May 15, 1997
               ; modified by Sylvie Gallet
               ; 1st parameter: real(p1) = bailout
               ; 2nd parameter: imag(p1) = number of sides
  z = 0
  c = 0.2 * log(pixel^imag(p1)) :
  z2 = fn1(z) + c, sqz2 = sqr(z2)
  z = c * (1-sqz2)/(1+sqz2)
  |z| <= p1
  ;SOURCE: 98msg.frm
}


051597-002-m1-m2 {; Linda Allison May 15,1997
                  ; modified by Sylvie Gallet
                  ; modified again by Linda Allison
                  ; 1st parameter: real(p1) = bailout
                  ; 2nd parameter: imag(p1) = number of sides
  z = 0
  c = 0.2 * log(pixel^imag(p1)) :
  z2 = fn1(z) + c, sqz2 = fn2(z2)
  z = c * (1-sqz2)/(1+sqz2)
  |z| <= p1
  ;SOURCE: 98msg.frm
}


051597-002-m1-m2-m  {; Linda Allison May 15,1997
                     ; modified by Sylvie Gallet
                     ; modified again by Linda Allison
                     ; and again by David Shanholtzer
                     ; 1st parameter: real(p1) = bailout
                     ; 2nd parameter: imag(p1) = number of sides
  z = 0
  c = 0.4 * log(sqr(pixel^imag(p1))) :
  z2 = fn1(z) + c, sqz2 = fn2(z2)
  z = c * (1-sqz2)/(1+sqz2)
  |z| <= p1
  ;SOURCE: 98msg.frm
}


051597-002a {; Linda Allison May 15, 1997
             ; stars modified by David Shanholtzer 
  z=0
  c=log(sqr(sqr(pixel))*pixel)*0.4:
  z2=fn1(z)+c
  z=c*(1-z2*z2)/(1+z2*z2)
  |z|<=p1
  ;SOURCE: 98msg.frm
}


051597-002mt1 {; Linda Allison May 15, 1997
               ; MT mod: fn vice 1st sqr
  z=0
  c=log(fn1(sqr(pixel))*pixel)*0.2:
  z2=fn2(z)+c
  z=c*(1-z2*z2)/(1+z2*z2)
  |z|<=p1
  ;SOURCE: 051597-2.frm
}


051597-002mt2 {; Linda Allison May 15, 1997
               ; MT mod: fn vice 2nd sqr
  z=0
  c=log(sqr(fn1(pixel))*pixel)*0.2:
  z2=fn2(z)+c
  z=c*(1-z2*z2)/(1+z2*z2)
  |z|<=p1
  ;SOURCE: 051597-2.frm
}


051597-002mt3 {; Linda Allison May 15, 1997
               ; MT mod: fn's vice both sqr's
  z=0
  c=log(fn1(fn2(pixel))*pixel)*0.2:
  z2=fn3(z)+c
  z=c*(1-z2*z2)/(1+z2*z2)
  |z|<=p1
  ;SOURCE: 051597-2.frm
}


05A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=sqr(z) + c*c-0.14
  z=sqr(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


06-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=cosxx(z) + c-0.14
  z=cosxx(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


06A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + tanh(z) + 0.33/pixel:
  z=cosxx(z) + c*c-0.14
  z=cosxx(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


07-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + flip(z) + 0.33/pixel:
  z=cosxx(z) + c-0.14
  z=tanh(z) + c-0.14
  |z| <=10
  ;SOURCE: carr.frm
}


07A-Carr {; Edited for Fractint v. 20 by George Martin, 10/98
  c=z=1/pixel + flip(z) + 0.33/pixel:
  z=cosxx(z) + c*c-0.14
  z=tanh(z) + c*c-0.14
  |z| <=10
  ;SOURCE: 01carr.frm
}


08-Carr {
  c=z=1/pixel, c=cosxx(z)+1/pixel:
  z=(sqr(z*z)*sin(z/pixel)-pixel)+c
  |z| <=10
  ;SOURCE: carr.frm
}


08A-Carr {
  c=z=1/pixel, c=cosxx(z)+1/pixel:
  z=(sqr(z*z)*sin(z/pixel)-pixel)+c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


09-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=z*oldz+c
  oldz=temp
  |z| <=4
  ;SOURCE: carr.frm
}


09A-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=z*oldz+c*c
  oldz=temp
  |z| <=4
  ;SOURCE: 01carr.frm
}


1 { 
  z=c=1/pixel, sinc=sin(c):
  z=sqr(z*z) + c
  z=sin(z*z)*(z+pixel) + sinc
  |z| <=4
  ;SOURCE: forummsg.frm
}


10-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=flip(z*oldz+c)
  oldz=temp
  |z| <=4
  ;SOURCE: carr.frm
}


1001 {
  z = pixel:
  z = z^(z+p1) + c
  |z| <= p2
  ;SOURCE: kg10.frm
}


1002 {
  z = pixel:
  z = z^(z+p1) + p1^c
  |z| <= p2
  ;SOURCE: kg10.frm
}


100296-005 {; Linda Allison 
            ; note by LStC: This formula used for "Egyptian" images
  z = pixel:
  z = (fn1(1/z ^ p3))/p1 + (fn2(1/z ^ p3))/p2
  |z| <= .75 * p2
  ;SOURCE: egyptian.frm
}


100296-005org { ;Linda Allison
  z = pixel:
  z = (fn1(1/z ^ p3))/p1 + (fn2(1/z ^ p3))/p2
  |z| <= .75 * p2
  ;SOURCE: allison.frm
}


1003 {
  z = pixel:
  z = z^(z+p1) - c
  |z| <= p2
  ;SOURCE: kg10.frm
}


1004 {
  z = pixel:
  z = z^(z+p1) / c
  |z| <= p2
  ;SOURCE: kg10.frm
}


1005 {
  z = pixel:
  z = z^(z-p1) + c
  |z| <= p2
  ;SOURCE: kg10.frm
}


1006 {
  z = pixel:
  z = z^(z-p1) - c
  |z| <= p2
  ;SOURCE: kg10.frm
}


101 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = p1/pixel:
  z = z*z*c + z*c*c
  |z| <= p2
  ;SOURCE: kg1.frm
}


102 {; These formulafiles are from Karl Geigl 100327,156.
  z = p1/pixel, c = fn1(z):
  z = (z*z) + c
  z = z*z/c
  z <= p2 
  ;SOURCE: kg1.frm
}


103 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = p1/pixel:
  z =( (fn1(z) / c) + (fn2(z))^2) * z
  z <=p2
  ;SOURCE: kg1.frm
}


104 {; These formulafiles are from Karl Geigl 100327,156.
  z = p1/pixel, x = fn1(z):
  z = (z*z) + x
  z = z*p2/x 
  z <= 4
  ;SOURCE: kg1.frm
}


105 {; These formulafiles are from Karl Geigl 100327,156.
     ; Revised for Fractint v20 by G. Martin (obvious typo
     ; in bailout line corrected
  z = pixel:
  z = fn1 (p1/fn2(z))
    ; fn1 < p2  [ORIGINAL BAILOUT LINE]
  z < p2 
  ;SOURCE: kg1.frm
}


106 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = p1/pixel:
  z = fn1 (fn2(c)*z) * fn1 (-z)
  z <= p2
  ;SOURCE: kg1.frm
}


107 {; These formulafiles are from Karl Geigl 100327,156.
     ; Revised for Fractint v20 by G. Martin (obvious typo
     ; in bailout line corrected
  z = pixel^0.5:
  z = sqr (1/fn1(z)) * sqr (fn2(z))
     ; fn1 < 50      [ These two line of        ]
     ; fn2 = 2*fn1   [ original formula deleted ]
  z < 50
  ;SOURCE: kg1.frm
}


108 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel^0.5:
  z = (((z*z) + (c-p1)) / ((z+z) + (c-p1)))^2
  z <=p2
  ;SOURCE: kg1.frm
}


109 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = fn1(pixel):
  z = z*z + c
  z <= p1
  ;SOURCE: kg1.frm
}


10A-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=flip(z*oldz+c*c)
  oldz=temp
  |z| <=4
  ;SOURCE: 01carr.frm
}


11-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=cosxx((z*oldz+c)/pixel)
  oldz=temp
  z=sqr(z) + c
  |z| <=4
  ;SOURCE: carr.frm
}


110 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel, c = fn1 (pixel):
  z = c*c +z
  z <= p1
  ;SOURCE: kg1.frm
}


1101 {
  z = pixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  |z| <= p2
  ;SOURCE: kg11.frm
}


1102 {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  |z| <= p2
  ;SOURCE: kg11.frm
}


1103 (XAXIS) {
  z = pixel:
  z = p1 * (z^p2) + p2 * (z^p1)
  z = z + pixel
  z = fn1(z) * p1
  |z| <= p2
  ;SOURCE: kg11.frm
}


1104 (XYAXIS) {
  z = pixel:
  z = p1 * (z^p2) - p2 * (z^p1)
  z = z + pixel
  z = fn1(z) ^p1
  |z| <= p2
  ;SOURCE: kg11.frm
}


111 {; These formulafiles are from Karl Geigl 100327,156.
  z = c = fn1 (pixel):
  z = z*z + c
  z <=2
  ;SOURCE: kg1.frm
}


112 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z^z + z^p1 + c
  z <= p2
  ;SOURCE: kg1.frm
}


113 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z^z - z^p1 + c
  z <= p2
  ;SOURCE: kg1.frm
}


114 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z^z + z^p1 - c
  z <= p2
  ;SOURCE: kg1.frm
}


115 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^z) + z^p1 + c
  z <= p2
  ;SOURCE: kg1.frm
}


116 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z) + z^p1 + c
  z <= p2 
  ;SOURCE: kg1.frm
}


117 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^z) + fn2(z^p1) + c
  z <= p2
  ;SOURCE: kg1.frm
}


118 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^p1) - c
  z <=2
  ;SOURCE: kg1.frm
}


119 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = fn1(z^5) + c
  z <=2
  ;SOURCE: kg1.frm
}


11A-Carr {
  z=oldz=c=1/pixel, c=cosxx(z):
  temp=z
  z=cosxx((z*oldz+c*c)/pixel)
  oldz=temp
  z=sqr(z) + c*c
  |z| <=4
  ;SOURCE: 01carr.frm
}


12-Carr {
  z=c=cosxx(1/pixel):
  z=cosxx(z*z) + sin(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


1201 {
  z = pixel:
  z = fn1 (1/z) + pixel
  |z| <= p2
  ;SOURCE: kg12.frm
}


1202 {
  z = pixel:
  z = fn1 (1/z) - pixel
  |z| <= p2
  ;SOURCE: kg12.frm
}


1203 {
  z = pixel:
  z = fn1 (1/z) + pixel * z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1204 {
  z = pixel:
  z = fn1 (1/z) - pixel * z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1205 {
  z = pixel:
  z = fn1 (1/z) + pixel + z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1206 {
  z = pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1207 {
  z = 1/pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1208 {
  z = 1/pixel:
  z = fn1 (1/z) + pixel * z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1209 {
  z = 1/pixel:
  z = fn1 (1/z) - pixel * z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1210 {
  z = 1/pixel:
  z = fn1 (1/z) + pixel + z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1211 {
  z = 1/pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
  ;SOURCE: kg12.frm
}


1212 {
  z = 2/pixel:
  z = fn1 (1/z) - pixel + z
  |z| <= p2
  ;SOURCE: kg12.frm
}


12A-Carr {
  z=c=cosxx(1/pixel):
  z=cosxx(z*z) + sin(z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


13-Carr {
  c=z=1/pixel, c=flip(-1.1,0.24)/pixel:
  z=sqr(z) + c
  |z| <=10
  ;SOURCE: carr.frm
}


1301 {
  z = 1/pixel:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
  ;SOURCE: kg13.frm
}


1302 {
  z = 1/pixel:
  z = fn1(z/pixel) / fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
  ;SOURCE: kg13.frm
}


1303 {
  z = 1/pixel:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 - fn1 (c-p1)
  |z| <= p2
  ;SOURCE: kg13.frm
}


1304 {
  z = 1/pixel:
  z = fn1(z/pixel) / fn2(pixel)
  z = z^p2 * fn1 (c-p1)
  |z| <= p2
  ;SOURCE: kg13.frm
}


1305 {
  z = pixel:
  z = fn1 ( fn2 (fn3 (z)))
  |z| <= p1
  ;SOURCE: kg13.frm
}


1306 {
  z = 0.1/pixel:
  z = fn1 ( fn2 (fn3 (z)))
  |z| <= p1
  ;SOURCE: kg13.frm
}


1311 {
  z = 1/pixel+1:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
  ;SOURCE: kg13.frm
}


1321 {
  z = 1/pixel-1:
  z = fn1(z/pixel) * fn2(pixel)
  z = z^p2 + fn1 (c-p1)
  |z| <= p2
  ;SOURCE: kg13.frm
}


13A-Carr {
  c=z=1/pixel, c=flip(-1.1,0.24)/pixel:
  z=sqr(z) + c*c
  |z| <=10
  ;SOURCE: 01carr.frm
}


13h {; Modified Sylvie Gallet frm.
     ; Added variable "newpixel". G. Martin, 6/27/99
  newpixel=-flip(-abs(pixel*(fn1(sqrt(pixel*1)))))
  z = newpixel 
  c = fn2(sqrt(flip(pixel^z))) * (0.0803645521966,0.01745329252) 
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel))* (whitesq == 0)\ 
      + (fn4(atanh(abs(sqr(newpixel))))) * whitesq 
  c=c*(1-test)+d1+test*(p2*c)
  z=fn3(z^2)+(c/p3)-0.1/newpixel
  iter=iter+1
  |z|<=16
  ;SOURCE: bej0015.frm
}


13m (YAXIS) {; Modified Sylvie Gallet frm.
             ; Added variable "newpixel". G. Martin, 6/27/99
  newpixel=-abs(real(pixel))+flip(imag(pixel))
  z=c=newpixel/pi
  d1=(0.00099475/-newpixel)+(flip(0.00010/newpixel))
  iter=0, nextzoom=iterspace=real(p1):
  test=(iter==nextzoom)
  nextzoom=nextzoom+test*iterspace
  z=(z*(1-test))+flip(imag(0.03750/newpixel)) * (z^2+c-0.1/newpixel) 
  c=c*(1-test)+d1+test*(-flip(abs(p2*c+p3)))
  z=z^2+c-0.1/newpixel
  iter=iter+1
  |z|<=16
  ;SOURCE: bej0015.frm
}


14-Carr {
  z=c=1/pixel:
  z=cosxx(c^z)/pixel
  z=(sqr(z) + 0.1) + c-1
  |z| <=10
  ;SOURCE: carr.frm
}


14A-Carr {
  z=c=1/pixel:
  z=cosxx(c^z)/pixel
  z=(sqr(z) + 0.1) + c*c-1
  |z| <=10
  ;SOURCE: 01carr.frm
}


1kotz (XAXIS) {
  z=pixel:
  z=cosxx(1/z)-pixel
  |z|<=4
  ;SOURCE: tritz.frm
}


1NewCos (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de
                  ; cos(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z+g*(cos(z)-root)/sin(z)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewCosF (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de
                   ; cos(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z+g*(cos(z)-root)/sin(z)
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: peternew.frm
}


1NewCot (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de 
                  ; cotan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z+g*(sin(z))^2*(cotan(z)-root)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewCotF (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de 
                   ; cotan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z+g*(sin(z))^2*(cotan(z)-root)
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: peternew.frm
}


1NewLog {; Peter Anders anders@physik.hu-berlin.de
         ; log(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*z*(log(z)-root)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewLogF {; Peter Anders anders@physik.hu-berlin.de 
          ; log(z)-p2=0
  z=pixel:
  c=z
  z=z-g*z*(log(z)-root)
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: peternew.frm
}


1NewPolyI {; Peter Anders anders@physik.hu-berlin.de
           ; just works with FRACTINT18.2 or less
           ; XAXIS for real exponents
  z=pixel, r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*x^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewPolyII {; Peter Anders anders@physik.hu-berlin.de
            ; just works with FRACTINT18.2 or less
            ; XAXIS for real exponents
  z=pixel, r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*x^(r-1)))
  abs(real(z)-real(c)) >0.000001, abs(imag(z)-imag(c)) >0.000001
  ;SOURCE: peternew.frm
}


1NewPolyR (XAXIS) {; Peter Anders anders@physik.hu-berlin.de
                   ; real Newton formula for polynoms,
  z=pixel, r=real(p1), root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewPolyRII {; Peter Anders anders@physik.hu-berlin.de
             ; real Newton formula for polynoms,
  z=pixel, r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewPolyRIII (XAXIS) {; Peter Anders anders@physik.hu-berlin.de 
  z=pixel, a=p1, b=p2, g=p3+1:
  c=z
  z=z-g*(((z^a)-(z^b))/((a*z^(a-1))-(b*z^(b-1))))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewPolyRIV {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=real(p1), a=p2, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-a)))
  |z-c| >imag(p1)
  ;SOURCE: peternew.frm
}


1NewPolyRV {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=real(p1), a=p2, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-a)))
  real(|z-c|) <imag(p1)
  ;SOURCE: peternew.frm
}


1NewPolyRVI {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=real(p1), a=p2, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-a)))
  real(|fn1(z)|)<imag(p1)
  ;SOURCE: peternew.frm
}


1NewPolyRVII {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=real(p1), a=p2, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-a)))
  real(|fn1(z)|)>imag(p1)
  ;SOURCE: peternew.frm
}


1NewPolyRVIII {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, c=fn1(pixel), a=p1, b=p2, d=p3:
  zz=z
  z=z-(z^a-c^b*z^d)/(a*z^(a-1)+c^b*d*z^(d-1))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


1NewSin (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de 
                  ; sin(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*(sin(z)-root)/cos(z)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewSinF (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de  
                   ; sin(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*(sin(z)-root)/cos(z)
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: peternew.frm
}


1NewTan (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de  
                  ; tan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*(cos(z))^2*(tan(z)-root)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


1NewTanF (XYAXIS) {; Peter Anders anders@physik.hu-berlin.de 
                   ; tan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  z=z-g*(cos(z))^2*(tan(z)-root)
  |real(z)-imag(c)| >0.000000001 || |imag(z)-imag(c)| >0.000000001 
  ;SOURCE: peternew.frm
}


1PixelPolyI {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel, r=p2+1, g=p3+1:
  z=z-g*(z^r+c)/(r*z^(r-1))
  |z|>p1
  ;SOURCE: peternew.frm
}


1PixelPolyII {; Peter Anders anders@physik.hu-berlin.de 
  z=c=pixel, r=p2+1, g=p3+1:
  z=z-g*(z^r+c)/(r*z^(r-1))
  |z|<p1
  ;SOURCE: peternew.frm
}


1PixelPolyIII {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel, r=p2+1, g=p3+1:
  d=z
  z=z-g*(z^r+c)/(r*z^(r-1))
  |z-d|>p1
  ;SOURCE: peternew.frm
}


1PixelPolyIV {; Peter Anders anders@physik.hu-berlin.de
  z=c=pixel, r=p2+1, g=p3+1:
  d=z 
  z=z-g*(z^r+c)/(r*z^(r-1))
  |z-d|<p1
  ;SOURCE: peternew.frm
}


1what {
  z=(1/sin(pixel)/cos(1/flip(pixel)))-1.5/pixel
  c=2.34/(1.5+sqr(pixel*pixel+2/atan(1/pixel))):
  z=z*z+c
   ; c=((1+flip(imag(sqrt(sin(c-0.1/pixel)))))*real(sqrt(tan(c)))/9+z)
   ; c=z+c/2.125
  |real(z)| <=4
  ;SOURCE: 1what.frm
}


1what2 {
  z=1/(pixel-conj(1/pixel)-tan(1/pixel))
  c=conj(pixel)/(9+tan(conj(z-conj(1/pixel)))):
  z=z*z+c
  |real(z)| <=4
  ;SOURCE: 1what.frm
}


1what3 {
  z=c=1/pixel:
  z=sqr(z*z) + c
  z=sin(z*z)*(z+pixel) + sin(c)
  |z| <=4
  ;SOURCE: 1what3.frm
}


2 {; Sylvie Gallet [101324,3444]
  z0 = p1, h = real(p2), w = imag(p2), b = real(p3)
  x0 = real(z0), y0 = imag(z0), w2 = w/2
  z1 = z0 + flip(b), r1 = w2 - b, zc = z0 + w2 + flip(h-w2)
  z1c = z1 - zc 
  theta = acos (r1/cabs(z1c)) + atan (imag(z1c) / real(z1c))
  xc = real(zc), yc = imag(zc), tanth = tan(theta)
  z = pixel, x = real(z), y = imag(z) 
  exp1 = (x0-x)/tanth + y0 + b, exp2 = (x-xc)*tanth + yc
  chr21 = ( abs(cabs(z-zc)-(w-b)/2) < b/2 ) &&  \
          ( y > y0+h-w2 || y > exp2 ) \
       || ( y < exp1 && y > exp1 - b/sin(theta) && y < exp2 ) \
       || ( y < y0 + b )
  test = chr21 && x > x0 && x < x0+w && y > y0 && y < y0+h :
  z = z*z + pixel
   |z| <= 16 && test==0
  ;SOURCE: 96_msg_2.frm
}


2-2 {; Sylvie Gallet [101324,3444]
    ; screen width: 2,  screen height: 1.5, lower left corner: (0,0)
  z0 = p1, h = real(p2), w = imag(p2), b = real(p3)
  x0 = real(z0), y0 = imag(z0), w2 = w/2
  z1 = z0 + flip(b), r1 = w2 - b, zc = z0 + w2 + flip(h-w2)
  z1c = z1 - zc
  theta = acos (r1/cabs(z1c)) + atan (imag(z1c) / real(z1c))
  xc = real(zc), yc = imag(zc), tanth = tan(theta)
  x = 2 * real(scrnpix) / real(scrnmax)
  y = 1.5 * (imag(scrnmax)-imag(scrnpix)-1) / imag(scrnmax)
  z = x + flip(y)
  exp1 = (x0-x)/tanth + y0 + b, exp2 = (x-xc)*tanth + yc
  chr21 = ( abs(cabs(z-zc)-(w-b)/2) < b/2 ) &&  \
          ( y > y0+h-w2 || y > exp2 ) \
       || ( y < exp1 && y > exp1 - b/sin(theta) && y < exp2 ) \
       || ( y < y0 + b )
  test = chr21 && x > x0 && x < x0+w && y > y0 && y < y0+h
  z = pixel :
  z = z*z + pixel
  |z| <= 16 && test==0
  ;SOURCE: 96_msg_2.frm
}


2-pieces {
  z = pixel, c = p1:
  z = c * (z - 1 / z)
  |z| <= p2
  ;SOURCE: test.frm
}


2.5jp1c {
  z=pixel:
  z=(p2+p1*z*z*z*conj(z)*conj(z))/(p2+p1*z*z*conj(z)*conj(z))
  |z|<=10
  ;SOURCE: queratz.frm
}


2.5p1 {
  z=pixel:
  z=(pixel+p1*z*z*z*conj(z)*conj(z))/(pixel+p1*z*z*conj(z)*conj(z))
  |z|<=10
  ;SOURCE: queratz.frm
}


201 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z-1) * (z+1/2) / (z*z+1)/2
  z < 5
  ;SOURCE: kg2.frm
}


202 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z-1) * (z+1/2)^(z*z-1)/2
  z < 5
  ;SOURCE: kg2.frm
}


203 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z+1) * (z-1/2) * (z*z+1)/2
  z < 5
  ;SOURCE: kg2.frm
}


204 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z+1) * (z-1/2) * (z*z-1)/2
  z < 5
  ;SOURCE: kg2.frm
}


205 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z-1) * (z+1/2) * (z*z+1)
  z < 5
  ;SOURCE: kg2.frm
}


206 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z-1) * (z+1/2) * (z*z-1)
  z < 5
  ;SOURCE: kg2.frm
}


207 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z+1) * (z-1/2) * (z*z+1)
  z < 5
  ;SOURCE: kg2.frm
}


208 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z+1) * (z-1/2) * (z*z-1)
  z < 5
  ;SOURCE: kg2.frm
}


209 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z-5/4) * (z+2/3) * (z*z-1)
  z < 5
  ;SOURCE: kg2.frm
}


210 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z+5/4) * (z-2/3) * (z*z+1)
  z < 5
  ;SOURCE: kg2.frm
}


211 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = (z+22/7) * (z-22/7) * (z*z-1)
  z < 5
  ;SOURCE: kg2.frm
}


212 {; These formulafiles are from Karl Geigl 100327,156.
  z = 1+pixel:
  z = (z+22/7) * (z-22/7) * (z*z-1)
  z < 5
  ;SOURCE: kg2.frm
}


213 {; These formulafiles are from Karl Geigl 100327,156.
  z = 1/pixel:
  z = (z+22/7) * (z-22/7) * (z*z-1)
  z < 5
  ;SOURCE: kg2.frm
}


214 {; These formulafiles are from Karl Geigl 100327,156.
  z = (1/pixel)^3:
  z = (z+22/7) * (z-22/7) 
  z < 5
  ;SOURCE: kg2.frm
}


215 {; These formulafiles are from Karl Geigl 100327,156.
  z = (1/pixel)^3:
  z = (z+22/7) / (z-22/7) 
  z < 5
  ;SOURCE: kg2.frm
}


216 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z * (1-z) * c 
  z < 2
  ;SOURCE: kg2.frm
}


217 {; These formulafiles are from Karl Geigl 100327,156.
  z = pixel:
  z = z * (1+z) * c 
  z < 3
  ;SOURCE: kg2.frm
}


2ChangePoly1 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), a=real(p1), wechsel=imag(p1)
  root1=p2+1, root2=p3+1:
  zz=z
  x=(z^a-root1)/(a*z^(a-1))
  y=(z^a-root2)/(a*z^(a-1))
  z=z-((x)*(wechsel<real(z))+(y)*(real(z)<= wechsel)) 
  |z-zz|>0.000000001
  ;SOURCE: peternew.frm
}


2ChangePoly2 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), a=real(p1), wechsel=imag(p1)
  root1=p2+1, root2=p3+1:
  zz=z
  x=(z^a-root1)/(a*z^(a-1))
  y=(z^a-root2)/(a*z^(a-1))
  z=z-((x)*(wechsel<|z|)+(y)*(|z|<= wechsel)) 
  |z-zz|>0.000000001
  ;SOURCE: peternew.frm
}


2HalNewPoly1 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r1=real(p1), r2=imag(p1), g=p2+1, g2=p3+1:
  c=z
  f1=z^r1-1
  f2=r1*z^(r1-1)
  f3=r1*(r1-1)*z^(r1-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2HalNewPoly2 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r1=r2=p1, g=p2+1, g2=p3+1:
  c=z
  f1=z^r1-1
  f2=r1*z^(r1-1)
  f3=r1*(r1-1)*z^(r1-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2HalNewSin {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, root=p1+1, g=p2+1, g2=p3+1:
  c=z
  f1=sin(z)-root
  f2=cos(z)
  f3=-sin(z)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  z=z-g2*(sin(z)-root)/(cos(z)) ; Newton
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2jotzp1 (ORIGIN) {
  z=pixel:
  z=cosxx(1/z)-p1
  |z|<=4
  ;SOURCE: tritz.frm
}


2jRatz-fn {; try fn=ident , p1 < 1 
  z = Pixel :  
  z = (z * z * fn1(z) * p1 + p2 )/(z * fn2(z) * p1 + p2 ) 
  | z | <= 10 
  ;SOURCE: fn-ratz.frm
}


2lambda32 {; Peter Anders anders@physik.hu-berlin.de
           ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p2, c=pixel:  ; p2<>1<>-1<>0
  IF (real(z/c)<imag(p1))
    z = z*(1-z)*c + z*(1+z)*c 
  ELSE
    z = z*(1-z)*c
  ENDIF
  |z|<real(p1)+4
  ;SOURCE: anders.frm
}


2mandel32 {; Peter Anders anders@physik.hu-berlin.de 
           ; Edited for Fractint v. 20 by George Martin, 10/98
  z=p2, c=pixel:
  IF (real(z/c)<imag(p1))
    z = 2*z*z  
  ELSE
    z = z*z+c
  ENDIF
  |z|<real(p1)+4
  ;SOURCE: anders.frm
}


2newCos^2 (XYAxis) {; Peter Anders anders@physik.hu-berlin.de 
                    ; cos(z)*cos(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z+g*(cos(z)*cos(z)-root)/(2*cos(z)*sin(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newCosCosH {; Peter Anders anders@physik.hu-berlin.de
             ; cos(z)*cosh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(cos(z)*cosh(z)-root)/(cos(z)*sinh(z)-sin(z)*cosh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newCosH/Tan (XYaxis) {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, root=p2, g=p3+1:
  c=z
  f1=(cosh(z)/tan(z))-root
  f21=sinh(z)*tan(z)-cosh(z)*(tan(z)*tan(z)+1)
  f22=tan(z)*tan(z)
  f2=f21/f22
  z=z-g*f1/f2
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newCosH^2 (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                     ; cosh(z)*cosh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(cosh(z)*cosh(z)-root)/(2*cosh(z)*sinh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newCosHTanH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de
                       ; cosh(z)*tanh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(cosh(z)*tanh(z)-root)/(cosh(z)*(1-tanh(z)*tanh(z))\
    +sinh(z)*tanh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2NewCosTan (XYAxis) {; Peter Anders anders@physik.hu-berlin.de 
                     ; tan(z)*cos(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tan(z)*cos(z)-root)/(cos(z)*(tan(z)*tan(z)+1)-sin(z)*tan(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newCosTanH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de
                      ; tanh(z)*cos(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tanh(z)*cos(z)-root)/(cos(z)*(1-tanh(z)*tanh(z))-sin(z)*tanh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newHalPoly1 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r1=real(p1), r2=imag(p1), g=p2+1, g2=p3+1:
  c=z
  z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
  f1=z^r1-1
  f2=r1*z^(r1-1)
  f3=r1*(r1-1)*z^(r1-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newHalPoly2 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r1=r2=p1, g=p2+1, g2=p3+1:
  c=z
  z=z-g2*(z^r2-1)/(r2*z^(r2-1)) ; Newton
  f1=z^r1-1
  f2=r1*z^(r1-1)
  f3=r1*(r1-1)*z^(r1-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))    ; Halley
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newHalPolyF1 {; Peter Anders anders@physik.hu-berlin.de
               ; Seems to work just with FRACTINT 18.2 or earlier
  z=pixel, r1=real(p1), r2=imag(p1), g=p2+1, g2=p3+1:
  c=z
  x=fn1(z)
  z=z-g2*(z^r2-1)/(r2*x^(r2-1))  ; Newton
  x=fn1(z)
  f1=z^r1-1
  f2=r1*x^(r1-1)
  f3=r1*(r1-1)*x^(r1-2)
  z=z-g*f1/(f2-f3*f1/(2*f2))     ; Halley
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSin[tan[z]] {; Peter Anders anders@physik.hu-berlin.de
                 ; sin(tan(z)-p2)-p1=0
  z=pixel, g=p3+1:
  c=z 
  z=z-g*(sin(tan(z)-p2)-p1)/(cos(tan(z)-p2)*(tan(z)*tan(z)+1))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSin[z^a+b] {; Peter Anders anders@physik.hu-berlin.de 
                ; sin(z^p1-p2)=0
  z=pixel, a=p1, b=p2g=p3+1:
  c=z 
  z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSin[z^a+Pixel] {; Peter Anders anders@physik.hu-berlin.de
                    ; sin(z^a+pixel)=0
  z=pixel, a=p1, b=pixel, g=p2+1:
  c=z 
  z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSin[z^c+b]^a {; Peter Anders anders@physik.hu-berlin.de 
                  ; sin((z^p1-p2)^p3)=0
  z=pixel, a=p3, c=p1, b=p2:
  c=z 
  z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a))
  |z-c| >0.0001
  ;SOURCE: peternew.frm
}


2newSin[z^c+b]^aPi (Xaxis) {; Peter Anders anders@physik.hu-berlin.de
                            ; sin((z^pixel+pixel)^pixel)=0
     ; Formerly called "2newSin[z^c+b]^aPixel" - name truncated by
     ; G. Martin for Orgform to comply with Fractint's 18 character
     ; limit on formula names
  z=pixel, a=pixel, c=pixel, b=pixel:
  c=z 
  z=z-sin((z^c+b)^a)/( c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a))
  |z-c| >0.0001
  ;SOURCE: peternew.frm
}


2newSin[z^c+b]^Pix {; Peter Anders anders@physik.hu-berlin.de 
                    ; sin((z^p1-p2)^pixel)=0
     ; Formerly called "2newSin[z^c+b]^Pixel" - name truncated by
     ; G. Martin for Orgform to comply with Fractint's 18 character
     ; limit on formula names
  z=pixel, a=pixel, c=p1, b=p2:
  c=z 
  z=z-(sin((z^c+b)^a))/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a))
  |z-c| >0.0001
  ;SOURCE: peternew.frm
}


2newSin[z^c+pixel] {; Peter Anders anders@physik.hu-berlin.de
                    ; sin((z^p1+pixel)^p2)=0
     ; Formerly called "2newSin[z^c+pixel]^a" - name truncated by
     ; G. Martin for Orgform to comply with Fractint's 18 character
     ; limit on formula names
  z=pixel, a=p2, c=p1, b=pixel:
  c=z 
  z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a))
  |z-c| >0.0001
  ;SOURCE: peternew.frm
}


2newSin[z^pix+b]^a {; Peter Anders anders@physik.hu-berlin.de
                    ; sin((z^pixel-p2)^p1)=0
     ; Formerly called "2newSin[z^pixel+b]^a" - name changed by
     ; G. Martin for Orgform to comply with Fractint's 18 character
     ; limit on formula names and to correct name conflict with
     ; an earlier formula named "2newSin[z^pixel+b]"
  z=pixel, a=p1, c=pixel, b=p2:
  c=z 
  z=z-sin((z^c+b)^a)/(c*z^(c-1)*a*(z^c+b)^(a-1)*cos((z^c+b)^a))
  |z-c| >0.0001
  ;SOURCE: peternew.frm
}


2newSin[z^Pixel+b] {; Peter Anders anders@physik.hu-berlin.de
                    ; sin(z^pixel+b)=0
  z=pixel, a=pixel, b=p2, g=p3+1:
  c=z 
  z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSin[z^Pixel+Pi (Xaxis) {; Peter Anders anders@physik.hu-berlin.de
                            ; sin(z^pixel+pixel)=0
     ; Formerly called "2newSin[z^Pixel+Pixel]" - name truncated by
     ; G. Martin for Orgform to comply with Fractint's 18 character
     ; limit on formula names
  z=pixel, a=pixel, b=pixel, g=p3+1:
  c=z 
  z=z-g*sin(z^a+b)/(a*z^(a-1)*cos(z^a+b))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSin^2 (XYAxis) {; Peter Anders anders@physik.hu-berlin.de 
                    ; sin(z)*sin(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sin(z)*sin(z)-root)/(2*cos(z)*sin(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2NewSinCos (XYAxis) {; Peter Anders anders@physik.hu-berlin.de 
                     ; sin(z)*cos(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sin(z)*cos(z)-root)/(cos(z)*cos(z)-sin(z)*sin(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSinCosH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                      ; sin(z)*cosh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sin(z)*cosh(z)-root)/(cos(z)*cosh(z)+sin(z)*sinh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSinH/Tan (XYaxis) {; Peter Anders anders@physik.hu-berlin.de
                       ; (sinh(z)/tan(z))-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z
  f1=(sinh(z)/tan(z))-root
  f21=cosh(z)*tan(z)-sinh(z)*(tan(z)*tan(z)+1)
  f22=tan(z)*tan(z)
  f2=f21/f22
  z=z-g*f1/f2
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSinH^2 (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                     ; sinh(z)*sinh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sinh(z)*sinh(z)-root)/(2*cosh(z)*sinh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2NewSinHCos (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                      ; sinh(z)*cos(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sinh(z)*cos(z)-root)/(cos(z)*cosh(z)-sin(z)*sinh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSinHCosH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                       ; sinh(z)*cosh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sinh(z)*cosh(z)-root)/(cosh(z)*cosh(z)+sinh(z)*sinh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSinHTanH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de
                       ; tanh(z)*sinh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tanh(z)*sinh(z)-root)/(sinh(z)*(1-tanh(z)*tanh(z))\
    +cosh(z)*tanh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSinLog {; Peter Anders anders@physik.hu-berlin.de 
            ; sin(z)*log(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sin(z)*log(z)-root)/(sin(z)/z+cos(z)*log(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2NewSinSinH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de
                      ; sinh(z)*sin(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sinh(z)*sin(z)-root)/(cos(z)*sinh(z)+sin(z)*cosh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2NewSinTan (XYAxis) {; Peter Anders anders@physik.hu-berlin.de 
                     ; sin(z)*tan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(sin(z)*tan(z)-root)/(cos(z)*tan(z)+sin(z)*(tan(z)*tan(z)+1))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newSinTanH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                      ; tanh(z)*sin(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tanh(z)*sin(z)-root)/(cos(z)*tanh(z)+sin(z)*(1-tanh(z)*tanh(z)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newTan^2 (XYAxis) {; Peter Anders anders@physik.hu-berlin.de
                    ; tan(z)*tan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tan(z)*tan(z)-root)*(cos(z)*cos(z)*cos(z))/(2*sin(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newTanCosH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de
                      ; cosh(z)*tan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(cosh(z)*tan(z)-root)/(sinh(z)*tan(z)+cosh(z)*(tan(z)*tan(z)+1))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newTanH/Tan (Yaxis) {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, root=p2, g=p3+1:
  c=z
  f1=(tanh(z)/tan(z))-root
  f21=(1-tanh(z)*tanh(z))*tan(z)-tanh(z)*(tan(z)*tan(z)+1)
  f22=tan(z)*tan(z)
  f2=f21/f22
  z=z-g*f1/f2
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newTanH^2 (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                     ; tanh(z)*tanh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tanh(z)*tanh(z)-root)*(cosh(z)*cosh(z)*cosh(z))/(2*sinh(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newTanLog {; Peter Anders anders@physik.hu-berlin.de
            ; log(z)*tan(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(log(z)*tan(z)-root)/(tan(z)/z+log(z)*(tan(z)*tan(z)+1))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newTanSinH (XYaxis) {; Peter Anders anders@physik.hu-berlin.de 
                      ; tan(z)*sinh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tan(z)*sinh(z)-root)/(sinh(z)*(tan(z)*tan(z)+1)+cosh(z)*tan(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newTanTanH {; Peter Anders anders@physik.hu-berlin.de
             ; tan(z)*tanh(z)-p2=0
  z=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(tan(z)*tanh(z)-root)/((tan(z)*tan(z)+1)*tanh(z)\
    +tan(z)*(1-tanh(z)*tanh(z)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newtonDoublePoly {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, a=p1, b=p2, root=p3+1:
  zz=z
  z=z-(z^a-root)/(a*z^(a-1))
  z=z-(z^b-1)/(b*z^(b-1))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newtonDoubleSinAs {; Peter Anders anders@physik.hu-berlin.de
     ; Formerly called "2newtonDoubleSinAsin" - name truncated by
     ; G. Martin for Orgform to comply with Fractint's 18 character
     ; limit on formula names
  z=pixel, root1=p1, root2=p2:
  zz=z
  z=z-(sin(z)-root1)/cos(z)
  z=z-(asin(z)-root2)*sqrt(1-z*z)
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newtonLambda {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), c=fn2(pixel), a=p1:
  zz=z
  z=z-((z^a-(c*z*(1-z)))/(a*z^(a-1)-(c-2*c*z)))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newtonMandel {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), c=fn2(pixel), a=p1:
  zz=z
  z=z-((z^a-(z*z+c))/(a*z^(a-1)-2*z))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newtonPower1 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), c=fn2(pixel), a=p1:
  zz=z
  z=z-((z^a-(z^c))/(a*z^(a-1)-c*z^(c-1)))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newtonPower2 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), c=fn2(pixel), a=p1:
  zz=z
  z=z-((z^a-(z^c+c))/(a*z^(a-1)-c*z^(c-1)))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newtonTetrate1 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), c=fn2(pixel), a=p1:
  zz=z
  z=z-((z^a-(c^z))/(a*z^(a-1)-log(c)*c^z))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newtonTetrate2 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), c=fn2(pixel), a=p1:
  zz=z
  z=z-((z^a-(c^z+c))/(a*z^(a-1)-log(c)*c^z))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


2newz^aLog {; Peter Anders anders@physik.hu-berlin.de
            ; z^a*log(z)-p2=0
  z=pixel, a=p1, root=p2, g=p3+1:
  c=z 
  z=z-g*(z^a*log(z)-root)/(a*z^(a-1)*log(z)+z^a/z)
  |z-c|>0.000001
  ;SOURCE: peternew.frm
}


2newz^aLog2 {; Peter Anders anders@physik.hu-berlin.de
             ; z^p1*log(z)-pixel=0
  z=pixel, a=p1, g=p2+1:
  c=z 
  z=z-g*(z^a*log(z)-pixel)/(a*z^(a-1)*log(z)+z^a/z)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newz^aSin {; Peter Anders anders@physik.hu-berlin.de
            ; z^p1*sin(z)-p2=0
  z=pixel, a=p1, root=p2, g=p3+1:
  c=z 
  z=z-g*(z^a*sin(z)-root)/(a*z^(a-1)*sin(z)+z^a*cos(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newz^aSin2 {; Peter Anders anders@physik.hu-berlin.de
             ; z^p1*sin(z)-pixel=0
  z=pixel, a=p1, g=p2+1:
  c=z 
  z=z-g*(z^a*sin(z)-pixel)/(a*z^(a-1)*sin(z)+z^a*cos(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newz^aTan {; Peter Anders anders@physik.hu-berlin.de
            ; z^a*tan(z)-p2=0
  z=pixel, a=p1, root=p2, g=p3+1:
  c=z 
  z=z-g*(z^a*tan(z)-root)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
  |z-c|>0.000001
  ;SOURCE: peternew.frm
}


2newz^aTan2 {; Peter Anders anders@physik.hu-berlin.de
             ; z^p1*tan(z)-pixel
  z=pixel, a=p1, g=p3+1:
  c=z 
  z=z-g*(z^a*tan(z)-pixel)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newz^pixelLog {; Peter Anders anders@physik.hu-berlin.de
                ; z^pixel*log(z)-p2=0
  z=pixel, a=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(z^a*log(z)-root)/(a*z^(a-1)*log(z)+z^a/z)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newz^pixelSin {; Peter Anders anders@physik.hu-berlin.de 
                ; z^pixel*sin(z)-p2=0
  z=pixel, a=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(z^a*sin(z)-root)/(a*z^(a-1)*sin(z)+z^a*cos(z))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2newz^pixelTan {; Peter Anders anders@physik.hu-berlin.de
                ; z^pixel*tan(z)-p2=0
  z=pixel, a=pixel, root=p2, g=p3+1:
  c=z 
  z=z-g*(z^a*tan(z)-root)/(a*z^(a-1)*sin(z)+z^a*(tan(z)*tan(z)+1))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


2Ratz-fn {; try fn=ident , p1 < 1 
  z = Pixel :  
  z = (z * z * fn1(z) * p1 + Pixel )/(z * fn2(z) * p1 + Pixel ) 
  | z | <= 10 
  ;SOURCE: fn-ratz.frm
}


301 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 * (c+p2)
  |z| <= p1
  ;SOURCE: kg3.frm
}


302 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 * (c+p2)
  |z| < =p2
  ;SOURCE: kg3.frm
}


303 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 * (c-p2)
  |z| <=p1
  ;SOURCE: kg3.frm
}


304 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z+p1)^p2 * (c-p2)
  |z| <=p2
  ;SOURCE: kg3.frm
}


305 {
  z = pixel, c = fn1(z):
  z = z - c
  z= (z+p1)^p2 * (c+p2)
  |z| <=p1
  ;SOURCE: kg3.frm
}


306 {
  z = pixel, c = fn1(z):
  z = z + c
  z = (z-1)^2 * (c+3)
  |z| <=1
  ;SOURCE: kg3.frm
}


307 {
  z = pixel, c = fn1(z):
  z = z - c
  z = (z-p1)^p2 * (c+p1)
  |z| <= p2
  ;SOURCE: kg3.frm
}


308 = {
  z = pixel, c = fn1(z):
  z = z - c
  z= (z-p1)^2 * (c+p2)^p1
  |z| <= p1
  ;SOURCE: kg3.frm
}


309 {
  z = pixel, c = fn1(z):
  z = z + c
  z= (z-p1)^p2 + fn2(c+z)^p2
  |z| <= p1
  ;SOURCE: kg3.frm
}


39man (XAXIS) {; Tentative Copyright Ben Leighton 
     ; (this is likely to have been done at some time somewhere)
  z=a=pixel:
  a=pixel+(flip(a)-z)
  z=z*(z-a) +pixel
  |z| <=4
  ;SOURCE: 98msg.frm
}


3D_Balls_Julia {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the size of the balls
    ;   imag(p2) = number of iterations to skip
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  skip = imag(p2)
    ;****************************************************
    ; In the accompanying par file, balloops.par,
    ; we will set the number of ranges to 2, with
    ; 125 colors in each range, but the colormap will
    ; be modified to 4 ranges to give the desired effect.
    ;****************************************************
  num_ranges = real(p3)
  colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
    ball_size = real(p2)
    index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses a modified Pokorny equation.
    ;****************************************************
  w = 1 / (w * w + c) + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = wr * wr + (wi - .5) * (wi - .5)
    IF (d < ball_size)
      bailout = 1
      delta = ball_size - d
    ELSEIF (wr * wr + (wi + .5) * (wi + .5) < ball_size)
      bailout = 1
      delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
    ELSEIF ((wr - .5) * (wr - .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr - .5) * (wr - .5) + wi * wi)
    ELSEIF ((wr + .5) * (wr + .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr + .5) * (wr + .5) + wi * wi)
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * delta + range_num * colors_in_range + 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
  ;SOURCE: 97msg.frm
}


3D_Balls_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  ball_size = real(p1)
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w * w + c
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = wr * wr + (wi - .5) * (wi - .5)
    IF (d < ball_size)
      bailout = 1
      delta = ball_size - d
    ELSEIF (wr * wr + (wi + .5) * (wi + .5) < ball_size)
      bailout = 1
      delta = ball_size - (wr * wr + (wi + .5) * (wi + .5))
    ELSEIF ((wr - .5) * (wr - .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr - .5) * (wr - .5) + wi * wi)
    ELSEIF ((wr + .5) * (wr + .5) + wi * wi < ball_size)
      bailout = 1
      delta = ball_size - ((wr + .5) * (wr + .5) + wi * wi)
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * delta + range_num * colors_in_range + 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
  ;SOURCE: 97msg.frm
}


3D_Balls_Phoenix {; Algorithm and comments shamelessly borrowed to
                  ; Paul W. Carlson by Sylvie Gallet
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the size of the balls
    ;   imag(p1) = number of iterations to skip
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;   p3 = param for phoenix

    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel, y = 0
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
  skip = imag(p1)
    ;****************************************************
    ; In the accompanying par file, mndballs.par,
    ; we have 8 color ranges with 30 colors in each range
    ; for a total of 240 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| >= 1000.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the size of the balls.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  ball_size = real(p1)
  index_factor = (colors_in_range - 1) / ball_size:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This example uses the standard Mandelbrot set equation.
    ;****************************************************
  w = w*w - .5*w + p3, X = w*w - .5*y + p3, Y = w, w = X
    ;****************************************************
    ; If the orbit point is within the specified distance of a circle,
    ; set z to the index into the colormap and set the bailout flag.
    ;****************************************************
  IF (iter > skip)
    wr = real(w), wi = imag(w)
    d = |w - (0,0.5)|
    IF (d < ball_size)
      bailout = 1
      delta = ball_size - d
    ELSEIF (|w + (0,0.5)| < ball_size)
      bailout = 1
      delta = ball_size - |w + (0,0.5)|
    ELSEIF (|w - 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w - 0.5|
    ELSEIF (|w + 0.5| < ball_size)
      bailout = 1
      delta = ball_size - |w + 0.5|
    ENDIF
  ENDIF
  IF (bailout)
    z = index_factor * delta + range_num * colors_in_range + 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < 1000
  ;SOURCE: 97msg.frm
}


3D_C_Stalks_Mset (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   real(p1) = a factor controlling the width of the stalks
    ;   imag(p1) = bailout value for |w|
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = 0
  c = pixel
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
    ;****************************************************
    ; In both the accompanying par files, xmasbrot1 and 2,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
    ;****************************************************
    ; Real(p1) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.1
    ;****************************************************
  stalk_factor = real(p1)
  index_factor = (colors_in_range - 1) / stalk_factor
  :
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be express in terms of a complex variable
    ; and a complex constant will work with this method.
    ;****************************************************
  w=(w*w*w-2*w*w-1)/(c-1)+c
    ;****************************************************
    ; If the orbit point is within the specified distance of the circle,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
  dist_to_circle = abs(|w|-0.25)
  IF (dist_to_circle < stalk_factor && iter > 1)
    z = index_factor * dist_to_circle + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < imag(p1)
  ;SOURCE: 97msg.frm
}


3D_Phoenix_Spirals {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  prev_w = y = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
    ;****************************************************
    ; In the accompanying par file, phxspirs.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2)
  :
    ;****************************************************
    ; The equations being iterated.
    ;****************************************************
  w = prev_w * prev_w - 0.5 * prev_w + c
  b = w * w - 0.5 * y + c
  y = w
  w = b
    ;****************************************************
    ; If w exceeds a value of 1.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
  IF (w > 1)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
    delta_i = imag(w) - imag(prev_w)
    delta_r = real(w) - real(prev_w)
    angle = abs(atan(delta_i / delta_r))
    IF (delta_r < 0)
      angle = pi - angle
    ENDIF
    bailout = 1
    range_index = 2 * colors_in_range * angle / pi
    z = range_index + range_num * colors_in_range + 1
  ENDIF
    ;***************************************************
    ; Update previous value of w
    ;***************************************************
  prev_w = w
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0
  ;SOURCE: 97msg.frm
}


3D_Phoenox_Spirals {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1       = coordinates of the Julia set
    ;   real(p2) = number of color ranges
    ;   imag(p2) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  prev_w = y = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
    ;****************************************************
    ; In the accompanying par file, phxspirs.par,
    ; we have 2 color ranges with 125 colors in each range
    ; for a total of 250 colors. The first range starts at
    ; color 1.  Pixels will use color 255 when w < 1.0.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ;****************************************************
  num_ranges = real(p2)
  colors_in_range = imag(p2):
    ;****************************************************
    ; The equations being iterated.
    ;****************************************************
  w = prev_w * prev_w - 0.5 * prev_w + c
  b = w * w - 0.5 * y + c
  y = w
  w = b
    ;****************************************************
    ; If w exceeds a value of 1.0, set z to the index
    ; into the colormap and set the bailout flag.
    ;****************************************************
  IF (w > 1)
        ;***************************************************
        ; Compute the angle between the last 2 orbit points
        ;***************************************************
    delta_i = imag(w) - imag(prev_w)
    delta_r = real(w) - real(prev_w)
    angle = abs(atan(delta_i / delta_r))
    IF (delta_r < 0)
      angle = pi - angle
    ENDIF
    bailout = 1
    range_index = 2 * colors_in_range * angle / pi
    z = range_index + range_num * colors_in_range + 1
  ENDIF
    ;***************************************************
    ; Update previous value of w
    ;***************************************************
  prev_w = w
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0
  ;SOURCE: 3dphenox.frm
}


3daMand01 {; Mandelbrot/Zexpe via Lee Skinner
           ; based on 4dFRACT.FRM by Gordon Lamb (CIS: 100272,3541)
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z^2.71828182845905 + c
  |z|<=100
  ;SOURCE: fractint.frm
}


3daMand02 {; Mandelbrot/Xexpe/Feigenbaum's alpha constant=exponent
           ; based on 4dFRACT.FRM by Gordon Lamb (CIS: 100272,3541)
  z=real(pixel)+flip(imag(pixel)*p1)
  c=p2+p1*real(pixel)+flip(imag(pixel)):
  z=z^2.502907875095 + c
  |z|<=100
  ;SOURCE: fractint.frm
}


3DStalks_Julia (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = the value of complex constant c in the equation
    ;   real(p2) = a factor controlling the width of the stalks
    ;              (this is actually 1/2 the width of the "trap")
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
    ;****************************************************
    ; In the accompanying par file, mnkyface.par,
    ; we have 2 color ranges with 98 colors in each range
    ; for a total of 196 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p3)
  colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
  stalk_width = real(p2)
  index_factor = (colors_in_range - 1) / stalk_width
  :
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This line in the formula is the only one that needs
    ; to be changed for other equations.
    ; This example uses the "magnet2j" equation.
    ;****************************************************
  w=((w^3+3*w*(c-1)+(c-1)*(c-2))/(3*w*w+3*w*(c-2)+(c-1)*(c-2)+1))^2
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
    ;****************************************************
    ; If the orbit point is within stalk_width of an axis,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
  IF (min_dist_to_axis < stalk_width && iter > 1)
    z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < imag(p2)
  ;SOURCE: 97msg.frm
}


3DStalks_Julia-m (ORIGIN) {; Copyright (c) Paul W. Carlson, 1997
    ;****************************************************
    ; Always use floating point math and outside=summ.
    ;
    ; Parameters:
    ;   p1 = the value of complex constant c in the equation
    ;   real(p2) = a factor controlling the width of the stalks
    ;              (this is actually 1/2 the width of the "trap")
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
    ; Note that the equation variable is w, not z.  Always
    ; initialize z to zero.
    ;****************************************************
  w = pixel
  c = p1
  z = 0
  bailout = 0
  iter = 0
  range_num = 0
    ;****************************************************
    ; In the accompanying par file, mnkyface.par,
    ; we have 2 color ranges with 98 colors in each range
    ; for a total of 196 colors. The first range starts at
    ; color 1.  Pixels will use color 0 when |w| < bailout.
    ; Other values can be used here as long as the product
    ; of num_ranges times colors_in_range is less than 255.
    ; Color 0 is reserved for the background color and color
    ; 255 can be used for the inside color.
    ;****************************************************
  num_ranges = real(p3)
  colors_in_range = imag(p3)
    ;****************************************************
    ; Real(p2) controls the width of the stalks.
    ; These values will usually be in the range 0.001 to 0.5
    ;****************************************************
  stalk_width = real(p2)
  index_factor = (colors_in_range - 1) / stalk_width:
    ;****************************************************
    ; The equation being iterated.  Almost any equation
    ; that can be expressed in terms of a complex variable
    ; and a complex constant will work with this method.
    ; This line in the formula is the only one that needs
    ; to be changed for other equations.
    ; This example uses the "magnet2j" equation.
    ;****************************************************
  w = w*w + pixel
    ;****************************************************
    ; Find which axis the orbit point is closest to.
    ;****************************************************
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist_to_axis = abs(real(w))
  ELSE
    min_dist_to_axis = abs(imag(w))
  ENDIF
    ;****************************************************
    ; If the orbit point is within stalk_width of an axis,
    ; set z to the index into the colormap and set the bailout flag.
    ; Also, prevent bailout on the first two iterations.
    ;****************************************************
  IF (min_dist_to_axis < stalk_width && iter > 1)
    z = index_factor * min_dist_to_axis + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
    ;****************************************************
    ; Cycle through the range numbers (0 thru num_ranges - 1)
    ; With two color ranges, even iterations use color
    ; range 0, odd iterations use color range 1.
    ;****************************************************
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
    ;****************************************************
    ; Since we are using outside=summ, we have to subtract
    ; the number of iterations from z.
    ;****************************************************
  iter = iter + 1
  z = z - iter
    ;****************************************************
    ; Finally, we test for bailout
    ;****************************************************
  bailout == 0  && |w| < imag(p2)
  ;SOURCE: m_stalks.frm
}


3DStalks_Pokorny {; Copyright (c) Paul W. Carlson, 1998
    ;   p1       = Julia set coordinates
    ;   real(p2) = a factor controlling the width of the stalks
    ;   imag(p2) = bailout value for |w|
    ;   real(p3) = number of color ranges
    ;   imag(p3) = number of colors in each color range
    ;
  w = pixel
  c = p1
  z = bailout = iter = range_num = 0
  stalk_width = real(p2)
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  index_factor = (colors_in_range - 1) / stalk_width
  :
  w = 1 / (w * w + c)
    ;
  IF (abs(real(w)) <= abs(imag(w)))
    min_dist = abs(real(w))
  ELSE
    min_dist = abs(imag(w))
  ENDIF
  IF (min_dist < stalk_width && iter > 0)
    z = index_factor * min_dist + range_num * colors_in_range + 1
    bailout = 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0  && |w| < imag(p2)
  ;SOURCE: 98msg.frm
}


3jp1c {
  z=pixel:
  z=(p2+p1*z*z*conj(z))/(p2+p1*z*conj(z))
  |z|<=10
  ;SOURCE: queratz.frm
}


3jp1cvar {
  c=pixel+1/fn1(real(p1)*fn2(pixel))+1/fn2(real(p1)*fn1(pixel)) 
  z=c:
  z=(p2+imag(p1)*z*z*conj(z))/(p2+imag(p1)*z*conj(z))
  |z|<=10
  ;SOURCE: queratz.frm
}


3jRatz-fn {; try fn=ident, p1 < 1 
  z = Pixel :  
  z = (z * z * z * fn1(z) * p1 + p2 )/(z * z * fn2(z) * p1 + p2 ) 
  | z | <= 10 
  ;SOURCE: fn-ratz.frm
}


3NewPolyR1 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3NewPolyR2 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel^real(p2)-imag(p2), r=p1, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3NewPolyR3 {; Peter Anders anders@physik.hu-berlin.de
  z=pixel^4-1.25*pixel^2+0.25, r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3NewPolyR4 {; Peter Anders anders@physik.hu-berlin.de
  a=fn1(real(pixel)), b=fn1(imag(pixel)), z=a+b*(0,1)
  r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3NewPolyR5 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(fn2(pixel)), r=p1, root=p2+1, g=p3+1:
  c=z 
  z=z-g*((z^r-root)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3NewPolyR6 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel^real(p2)+imag(p2)), r=p1, g=p3+1:
  c=z 
  z=z-g*((z^r-1)/(r*z^(r-1)))
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3NewtonLike1 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), a=p1, b=p2+1:
  zz=z
  z=z-((z^a-1)/(a*z^(a-1)))
  z=fn2(b*(z/|z|))
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


3NewtonLike2 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), a=p1, b=p2+1:
  zz=z
  z=z-((z^a-1)/(a*z^(a-1)))
  z=fn2(b*(z/|z|)+pixel)
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


3NewtonLike3 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), a=p1, b=p2+1:
  zz=z
  z=z-((z^a-1)/(a*z^(a-1)))
  z=fn2(b*(z/|z|))+pixel
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


3NewtonLike4 {; Peter Anders anders@physik.hu-berlin.de
  z=fn1(pixel), a=p1, b=p2+1:
  zz=z
  z=z-((z^a-1)/(a*z^(a-1)))
  z=fn2(z/|z|)*|z| 
  |z-zz|>0.00000001
  ;SOURCE: peternew.frm
}


3p1 {
  z=pixel:
  z=(pixel+p1*z*z*conj(z))/(pixel+p1*z*conj(z))
  |z|<=10
  ;SOURCE: queratz.frm
}


3p1var {
  c=pixel+1/fn1(p2*fn2(pixel))+1/fn2(p2*fn1(pixel))
  z=c:
  z=(c+p1*z*z*conj(z))/(c+p1*z*conj(z))
  |z|<=10
  ;SOURCE: queratz.frm
}


3PolyRI {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=p1, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-1)))
  z=z+p2
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3PolyRII {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=p1, g=p3+1:
  c=z
  z=z-g*((z^r-1)/(r*z^(r-1)))
  z=z*p2
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3PolyRIII {; Peter Anders anders@physik.hu-berlin.de
  z=pixel, r=p1, root=p2+1, g=p3+1:
  c=z
  z=z-g*((z^r-root)/(r*z^(r-1)))
  z=fn1(z)
  |z-c| >0.000001
  ;SOURCE: peternew.frm
}


3Ratz-fn {; try fn=ident, p1 < 1 
  z = Pixel :  
  z = (z * z * z * fn1(z) * p1 + Pixel )/(z * z * fn2(z) * p1 + Pixel ) 
  | z | <= 10 
  ;SOURCE: fn-ratz.frm
}


3RDIM01 {; Mandelbrot
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+c
  |z|<=64
  ;SOURCE: fractint.frm
}


3RDIM02 {; Tetration
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=c^z 
  |z|<=32
  ;SOURCE: 4dfract.frm
}


3RDIM03 {; Mandelbrot function
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=fn1(z)+c
  |z|<=64
  ;SOURCE: 4dfract.frm
}


3RDIM04 {; Tetrated function     
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=fn1(c)^z 
  |z|<=64
  ;SOURCE: 4dfract.frm
}


3RDIM05 {; Mandelbrot lambda function
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=fn1(z)*c
  |z|<=64
  ;SOURCE: fractint.frm
}


3RDIM06 {
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1)
  z=conj(z), c=conj(c):
  z=fn1(z)+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


3RDIM08 {; Mandelbar
  z=p1*real(pixel)+flip(imag(pixel)) 
  c=p2+real(pixel)+p1*flip(imag(pixel)):
  z=conj(z*z)+c 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


3RDIM10 {; Mandelbrot power function
  z=flip(imag(pixel)), c=p2+real(pixel):
  z=(fn1(z)+c)^p1 
  |z|<=4
  ;SOURCE: 4dfract.frm
}


3RDIM13 {; Mandelbrot function
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=1/fn1(z)+c 
  |z|<=64
  ;SOURCE: 4dfract.frm
}


3RDIM14 {; Mandelbrot lambda function
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=c/fn1(z) 
  |z|<=64
  ;SOURCE: 4dfract.frm
}


3RDIMFRAME-ROBERT {; Ron Barnett, 1994
                   ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb005.frm
}


3RDIMFRAME-ROBERTJ {; Ron Barnett, 1995
                    ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(p3)+flip(imag(p3)*p1):
  z=z*z*z/5+z*z+c 
  |z|<=100
  ;SOURCE: reb007.frm
}


3RDIMIKENAGA01 {; Ron Barnett, 1994
                ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb005.frm
}


3RDIMIKENAGA01J {; Ron Barnett, 1995
                 ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(p3)+flip(imag(p3)*p1):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb007.frm
}


3RDIMIKENAGA02 {; Ron Barnett, 1994
                ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1)
  z=conj(z), c=conj(c):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb005.frm
}


3RDIMIKENAGA02J {; Ron Barnett, 1995
                 ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(p3)+flip(imag(p3)*p1)
  z=conj(z), c=conj(c):
  z=z*z*z+(c-1)*z-c 
  |z|<=100
  ;SOURCE: reb007.frm
}


3RDIMMANOWAR01 {; Ron Barnett, 1994
                ; floating point required
  z=z1=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb005.frm
}


3RDIMMANOWAR01J {; Ron Barnett, 1995
                 ; floating point required
  z=z1=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(p3)+flip(imag(p3)*p1):
  z=z*z+z1+c
  z1=z 
  |z|<=100
  ;SOURCE: reb007.frm
}


3RDIMSPIDER01 {; Ron Barnett, 1994
               ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(pixel)+flip(imag(pixel)*p1):
  z=z*z+c
  c=c/2+z 
  |z|<=100
  ;SOURCE: reb005.frm
}


3RDIMSPIDER01J {; Ron Barnett, 1995
                ; floating point required
  z=p1*real(pixel)+flip(imag(pixel))
  c=p2+real(p3)+flip(imag(p3)*p1):
  z=z*z+c
  c=c/2+z 
  |z|<=100
  ;SOURCE: reb007.frm
}


3sitz (XAXIS) {
  z=pixel:
  z=sin(1/z)-pixel*z
  |z|<=4
  ;SOURCE: tritz.frm
}


3telescope {; (c) Jay Hill, 1998
            ; use outside=summ periodicity=0 
  done = 1, z = 0, zc = 0, c = pixel
  s=|c|, t1=(256*s - 96)*s + 32*Real(c)              ; period 1 test
  t2=16*s + 32*Real(c) + 16                          ; period 2 test
  B=sqrt(-4*c-7), t3=|8+4*c*(1-B)|, t4=|8+4*c*(1+B)| ; period 3 tests
  z=z + 249*(t1<=3) + 250*(t2<=1)\ 
       + 251*(t3<=1) + 252*(t4<=1)      ; set colors
  IF (z>0)                              ; for periods 1, 2, and 3.
    done=-1         ; color is set for c in a component, skip iterations
  ENDIF
  :                                     ; initialization.
  zc=sqr(zc) + c                        ; standard MSet iteration
  IF (|zc| >= 4)                        ; Bailout at 4
    done=-1                             ; Set flag to force an exit.
  ENDIF
  done >= 0                             ; Continue if the flag >=0.
  ;SOURCE: 98msg.frm
}


3wayMandelbrot {; Jim Muth
  z=p3, g=pixel, a=real(p1), b=imag(p1)
  c=real(p2), d=imag(p2):
  z=(a*z^b)+(c*z^d)+(.3*(sqr(z)))+g
  |z| <= 100
  ;SOURCE: frac_art.frm
}


401 {
  z = x = pixel:
  z = fn1 (z) * fn2 (x)
  x = fn1 (x) / fn2 (z)
  |z| < 11
  ;SOURCE: kg4.frm
}


402 {
  z = x = pixel:
  x = fn1 (z) / fn2 (x)
  z = fn1 (x) * fn2 (z)
  |z| < 11
  ;SOURCE: kg4.frm
}


403 {
  z = x = pixel:
  x = fn1 (z) * fn2 (x)
  z = fn1 (x) + fn2 (z)
  |z| < 11
  ;SOURCE: kg4.frm
}


404 {
  z = x = pixel:
  x = fn1 (z) / fn2 (x)
  z = fn1 (x) + fn2 (z)
  |z| < 11
  ;SOURCE: kg4.frm
}


4dragons {; Giuseppe Zito
  z = pixel
  c4 = -0.372686
  c12 = 0.85001802
  c14 = 0.95828903
  c20 = -0.013424
  c24 = -0.698232
  d1 = -0.32712901
  d6 = -0.107867
  : 
  x = real(z), y = imag(z)
  s0 = y
  s0 = s0 -y
  s0 = s0 *c4
  s0 = s0 /y
  s0 = s0 +y
  s0 = s0 -y
  s0 = s0 /y
  s0 = s0 +c12
  s0 = s0 -x
  s0 = s0 *c14
  s0 = s0 *y
  s0 = s0 *c20
  s0 = s0 /y
  s0 = s0 +y
  s0 = s0 +c24
  newx = s0 
  s0 = y
  s0 = s0 +d1
  s0 = s0 -x
  s0 = s0 *d6
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


4drot-xy-wy {; 1997 by Benno Schmid
             ; p1=rotation angle x->w
             ; p2,p3=4d-coordinates of fixed point
  z=cos(p1*g2r)*real(pixel)+flip(imag(pixel))+p2:
  c=sin(p1*g2r)*flip(real(pixel))+p3
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4drot-xy-xz {; 1997 by Benno Schmid
             ; p1=rotation angle y->z
             ; p2,p3=4d-coordinates of fixed point
  g2r=0.0174532925199433
  z=real(pixel)+cos(p1*g2r)*flip(imag(pixel))+p2:
  c=sin(p1*g2r)*imag(pixel)+p3
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4drot-xz-xw {; Benno Schmid & Jim Muth
             ; real(p1)=exponent of Z
             ; imag(p1)=rotation angle in degrees
             ; p2 and p3=parallel planes
             ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(imag(p1)*.01745329251994))
  z=ee*imag(pixel)+p2
  c=real(pixel)+p3:
  z=z^real(p1)+c
  |z| <= 36
  ;SOURCE: 97msg.frm
}


4drot-xz-xw_new {; Benno Schmid & Jim Muth
                 ; real(p1)=exponent of Z
                 ; imag(p1)=rotation angle in degrees
                 ; p2 and p3=parallel planes
                 ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(imag(p1)*.01745329251994))
  z=ee*imag(pixel)+p2
  c=real(pixel)+p3:
  z=z^real(p1)+c
  |z| <= 36
  ;SOURCE: frac_art.frm
}


4drot-xz-xw_rev {; Benno Schmid & Jim Muth
                 ; real(p1)=exponent of Z
                 ; imag(p1)=rotation angle in degrees
                 ; p2 and p3=parallel planes
                 ; Replaced variable "e" with "ee" 5/05/99. G. Martin
  ee=exp(flip(imag(p1)*.01745329251994))
  z=ee*imag(pixel)+p2
  c=real(pixel)+p3:
  z=z^real(p1)+c
  |z| <= 36
  ;SOURCE: 0from_ml.frm
}


4drot-zw-yw {; 1997 by Benno Schmid
             ; p1=rotation angle z->y
             ; p2,p3=4d-coordinates of fixed point
  g2r=0.0174532925199433
  z=sin(p1*g2r)*flip(real(pixel))+p2
  c=cos(p1*g2r)*real(pixel)+flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4drot-zw-zx {; 1997 by Benno Schmid
             ; p1=rotation angle w->x
             ; p2,p3=4d-coordinates of fixed point
  g2r=0.0174532925199433
  z=sin(p1*g2r)*imag(pixel)+p2
  c=real(pixel)+cos(p1*g2r)*flip(imag(pixel))+p3:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4Dsl3DMand_Lin1 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = 0*(r == 0) +  1/rp3 * (r == 1)
  rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
  rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
  rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
  rot = rot +8/rp3 * (r == 8)
  shift = r*space
  rot = flip(rot)
  z=real(pixel+shift)+flip(imag(pixel+shift))
  c=rot+real(pixel+shift)+flip(imag(pixel+shift)):        
  z=z*z+c
  |z|<=48
  ;SOURCE: reb008.frm
}


4Dsl3DMand_Lin2 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = 0*(r == 0) +  1/rp3 * (r == 1)
  rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
  rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
  rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
  rot = rot +8/rp3 * (r == 8)
  shift = r*space
  rot = flip(rot)
  z=(1-rot)*real(pixel+shift)+flip(imag(pixel+shift))
  c=rot+real(pixel+shift)+flip(imag(pixel+shift)*(1-rot)):        
  z=z*z+c
  |z|<=48
  ;SOURCE: reb008.frm
}


4Dsl3DMand_Off1 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = 0*(r == 0) +  1/rp3 * (r == 1)
  rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
  rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
  rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
  rot = rot +8/rp3 * (r == 8)
  shift = space*r + flip(space*r)
  rot = flip(rot)
  z=real(pixel+shift)+flip(imag(pixel+shift))
  c=rot+real(pixel+shift)+flip(imag(pixel+shift)):        
  z=z*z+c
  |z|<=48
  ;SOURCE: reb008.frm
}


4Dsl3DMand_Off2 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = 0*(r == 0) +  1/rp3 * (r == 1)
  rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
  rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
  rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
  rot = rot +8/rp3 * (r == 8)
  shift = space*r + flip(space*r)
  rot = flip(rot)
  z=(1-rot)*real(pixel+shift)+flip(imag(pixel+shift))
  c=rot+real(pixel+shift)+flip(imag(pixel+shift)*(1-rot)):        
  z=z*z+c
  |z|<=48
  ;SOURCE: reb008.frm
}


4Dsl3DMand_Rot1 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  hpi = atan(1)
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = 0*(r == 0) +  1/rp3 * (r == 1)
  rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
  rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
  rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
  rot = rot +8/rp3 * (r == 8)
  xr = cos(rot*hpi), yr = sin(rot*hpi)
  shift = xr + flip(yr)
  loc = space*r
  rot = flip(rot)
  z=real(pixel*shift-loc)+flip(imag(pixel*shift-loc)),
  c=rot+real(pixel*shift-loc)+flip(imag(pixel*shift-loc)):        
  z=z*z+c, |z|<=48
  ;SOURCE: reb008.frm
}


4Dsl3DMand_Rot2 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  hpi = atan(1)
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = 0*(r == 0) +  1/rp3 * (r == 1)
  rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
  rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
  rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
  rot = rot +8/rp3 * (r == 8)
  xr = cos(rot*hpi), yr = sin(rot*hpi)
  shift = xr + flip(yr)
  loc = space*r
  rot = flip(rot)
  z=(1-rot)*real(pixel*shift-loc)+flip(imag(pixel*shift-loc)),
  c=rot+real(pixel*shift-loc)+flip(imag(pixel*shift-loc)*(1-rot)):        
  z=z*z+c, |z|<=48
  ;SOURCE: reb008.frm
}


4DslSJMand_Lin {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = r == 0 +  (rp3-1)/rp3 * (r == 1)
  rot = rot + (rp3-2)/rp3 * (r == 2) +  (rp3-3)/rp3 * (r == 3)
  rot = rot + (rp3-4)/rp3 * (r == 4) +  (rp3-5)/rp3 * (r == 5) 
  rot = rot + (rp3-6)/rp3 * (r == 6) +  (rp3-7)/rp3 * (r == 7) 
  rot = rot +(rp3-8)/rp3 * (r == 8)
  shift = r*space
  z=real(pixel+shift)+flip(imag(pixel+shift)*rot)
  c=rot*real(pixel+shift)+flip(imag(pixel+shift)):
  z=z*z+c
  |z|<=48
  ;SOURCE: reb008.frm
}


4DslSJMand_Off {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = r == 0 +  (rp3-1)/rp3 * (r == 1)
  rot = rot + (rp3-2)/rp3 * (r == 2) +  (rp3-3)/rp3 * (r == 3)
  rot = rot + (rp3-4)/rp3 * (r == 4) +  (rp3-5)/rp3 * (r == 5) 
  rot = rot + (rp3-6)/rp3 * (r == 6) +  (rp3-7)/rp3 * (r == 7) 
  rot = rot +(rp3-8)/rp3 * (r == 8)
  shift = space*r + flip(space*r)
  z=real(pixel+shift)+flip(imag(pixel+shift)*rot)
  c=rot*real(pixel+shift)+flip(imag(pixel+shift)):
  z=z*z+c
  |z|<=48
  ;SOURCE: reb008.frm
}


4DslSJMand_Rot {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
  hpi = atan(1)
  cr = p1*real(scrnpix) + p2*imag(scrnpix)
  rp3 = real(p3)
  space = imag(p3)
  r = cr - rp3 * trunc((cr+0.10) / rp3)
  rot = r == 0 +  (rp3-1)/rp3 * (r == 1)
  rot = rot + (rp3-2)/rp3 * (r == 2) +  (rp3-3)/rp3 * (r == 3)
  rot = rot + (rp3-4)/rp3 * (r == 4) +  (rp3-5)/rp3 * (r == 5) 
  rot = rot + (rp3-6)/rp3 * (r == 6) +  (rp3-7)/rp3 * (r == 7) 
  rot = rot +(rp3-8)/rp3 * (r == 8)
  xr = cos((1-rot)*hpi), yr = sin((1-rot)*hpi)
  shift = xr + flip(yr)
  loc = space*r
  z=real(pixel*shift-loc)+flip(imag(pixel*shift-loc)*rot)
  c=rot*real(pixel*shift-loc)+flip(imag(pixel*shift-loc)):
  z=z*z+c
  |z|<=48
  ;SOURCE: reb008.frm
}


4dxw (XYAXIS) {; 1997 by Benno Schmid
  z=real(pixel)
  c=flip(imag(pixel)):
  z=sqr(z)+c
  |z| <= p1
  ;SOURCE: 4d.frm
}


4dxw-par (ORIGIN) {
  z=real(pixel)+flip(real(p1))
  c=flip(imag(pixel))+imag(p1):
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4dxy (XYAXIS) {; 1997 by Benno Schmid
  z=real(pixel)+flip(imag(pixel)):
  z=sqr(z)
  |z| <= p1
  ;SOURCE: 4d.frm
}


4dxz (YAXIS) {; 1997 by Benno Schmid
  z=real(pixel)
  c=imag(pixel):
  z=sqr(z)+c
  |z| <= p1
  ;SOURCE: 4d.frm
}


4Dxz-par (YAXIS_NOPARM) {; 1997 by Benno Schmid
  z=real(pixel)+flip(real(p1))
  c=imag(pixel)+flip(imag(p1)):
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4dyw (XYAXIS) {; 1997 by Benno Schmid
  z=flip(real(pixel)), c=flip(imag(pixel)):
  z=sqr(z)+c
  |z| <= p1
  ;SOURCE: 4d.frm
}


4Dyw-par (ORIGIN) {
  z=real(p1)+flip(real(pixel))
  c=imag(p1)+flip(imag(pixel)):
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4dyz (YAXIS) {; 1997 by Benno Schmid
  z=flip(real(pixel))
  c=imag(pixel):
  z=sqr(z)+c
  |z| <= p1
  ;SOURCE: 4d.frm
}


4dyz-par (YAXIS_NOPARM) {; 1997 by Benno Schmid
  z=flip(real(pixel))+real(p1)
  c=imag(pixel)+flip(imag(p1)):
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4dzw (XAXIS) {; 1997 by Benno Schmid
  z=0
  c=real(pixel)+flip(imag(pixel)):
  z=sqr(z)+c
  |z| <= p1
  ;SOURCE: 4d.frm
}


4Dzw-par (YAXIS_NOPARM) {; 1997 by Benno Schmid
                         ; Mandelbrot
                         ; calculates perturbed sets correctly
  z=p1
  c=pixel:
  z=sqr(z)+c
  |z| <= 16
  ;SOURCE: 4d.frm
}


4jitzp1 (ORIGIN) {
  z=pixel:
  z=sin(1/z)-p1*z
  |z|<=4
  ;SOURCE: tritz.frm
}


4jp1c {
  z=pixel: 
  z=(p2+p1*z*z*z*conj(z))/(p2+p1*z*z*conj(z))
  ;SOURCE: queratz.frm
}


4p1 {
  z=pixel: 
  z=(pixel+p1*z*z*z*conj(z))/(pixel+p1*z*z*conj(z))
  ;SOURCE: queratz.frm
}


4top {; Giuseppe Zito
  z = pixel
  c0 = -0.368019
  c2 = 0.371898
  c13 = -0.266886
  d0 = -0.789983
  d1 = -0.102801
  d2 = -0.539712
  d11 = -0.83891
  d16 = -0.644658
  : 
  x = real(z), y = imag(z)
  s0 =c0
  s0 = s0 +c2
  s0 = s0 *x
  s0 = s0 +y
  s1 = y
  s1 = s1 +x
  s0 = s0 *s1
  s0 = s0 +y
  s0 = s0 +c13
  newx = s0 
  s0 =d0
  s0 = s0 +d1
  s0 = s0 *d2
  s0 = s0 +y
  s1 = x
  s1 = s1 *x
  s1 = s1 *y
  s2 = x
  s1 = s1 *s2
  s1 = s1 /y
  s1 = s1 *d11
  s0 = s0 -s1
  s0 = s0 *y
  s0 = s0 *y
  s0 = s0 *d16
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


501 {
  z = 0, c = pixel:
  z = (((z^p1 + p1)^p1) * (z*(z^p1-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}


502 {
  z = 0, c = pixel:
  z = (((z^p2 + p1)^p1) * (z*(z^p2-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}


503 {
  z = pixel, c = 0:
  z = (((z^p1 + p1)^p1) / (z*(z^p1-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}


504 {
  z = pixel, c = 0:
  z = (((z^p2 + p1)^p1) / (z/(z^p2-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}


505 {
  z = c = pixel:
  z = (((z^p1 + p1)^p1) / (z*(z^p2-p1))) * c
  |z| < 11
  ;SOURCE: kg5.frm
}


506 {
  z = c = pixel:
  z = (((z^p1 + p1)^p1) + (z*(z^p2-p1))) * c
  |z| < 11
  ;SOURCE: kg5.frm
}


507 {
  z = c = pixel:
  z = (((z^p2 + p1)^p2) / (z*(z^p2-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}


508 {
  z = c = pixel:
  z = (((z^p2 + p1)^p2) - (z*(z^p2-p1))) + c
  |z| < 11
  ;SOURCE: kg5.frm
}


5_brots {; Ron Barnett [70153,2133], 1996
  cr = 4*real(scrnpix) + 2*imag(scrnpix)
  r = cr - 5 * trunc(cr / 5)*(cr>4)
  c = (0,1)*(r == 0), c1 = (0.951,0.309) * (r == 1)
  c2 = (0.588,-0.809) * (r == 2), c3 = (-0.587,-0.809) * (r == 3)
  c4 = (-0.951,0.309) * (r == 4)
  c = pixel * (c + c1 + c2 + c3 + c4)
  z = ((1-c)/3)^0.5:
  z = z * z * z + (c-1) * z - c
  |z| <= 4
  ;SOURCE: 5_brots.frm
}


5_man {; fractint formula based on Stephen C. Ferguson's
       ; kaleidiscope of five Mandelbrot images formula
  z=0
  c = log(sqr(sqr(pixel))*pixel)*0.2:
  z=sqr(z)+c
  |z| <=4
  ;SOURCE: 97msg.frm
}


601 {
  z =  pixel, c = fn1(z):
  z = z + c
  z = (z-1)^2 * (c+3)
  z <= p1
  ;SOURCE: kg6.frm
}


602 {
  z = pixel, c = fn1(z):
  z = fn2(z)*fn3(z+c)
  |z| > p1
  ;SOURCE: kg6.frm
}


603 {
  z = c = pixel:
  z = fn1(c+z)*c
  z = fn2(z+c)
  z <= p1
  ;SOURCE: kg6.frm
}


604 {
  z = pixel, c = fn1(z):
  z = z^2 + fn2(fn3(z+c)^2)
  |z| <= p1
  ;SOURCE: kg6.frm
}


605 {
  z = c = pixel:
  z = z^c + fn1 (c)
  |z| <= p1
  ;SOURCE: kg6.frm
}


606 {
  z = c = pixel:
  z = z^c - fn1 (c)
  |z| <= p1
  ;SOURCE: kg6.frm
}


607 {
  z = c = pixel:
  z = z^c + fn1 (z+c)
  |z| <= p1
  ;SOURCE: kg6.frm
}


608 {
  z = c = pixel:
  z = z^c + fn1 (z-c)
  |z| <= p1
  ;SOURCE: kg6.frm
}


609 {
  z = c = pixel:
  z = z^c - fn1 (z+c)
  |z| <= p1
  ;SOURCE: kg6.frm
}


610 {
  z = c = pixel:
  z = z^c - fn1 (z-c)
  |z| <= p1
  ;SOURCE: kg6.frm
}


701 {
  z = c = p1 / pixel:
  z = z^p2 + c^p2 + c
  z <= p1
  ;SOURCE: kg7.frm
}


702 {
  z = c = p1 / pixel:
  z = z^p2 - c^p2 + c
  z <= p1
  ;SOURCE: kg7.frm
}


703 {
  z = c = p1 / pixel:
  z = z^p2 * c^p2 + c
  z <= p1
  ;SOURCE: kg7.frm
}


704 {
  z = c = p1 / pixel:
  z = z^p2 / c^p2 + c
  z <= p1
  ;SOURCE: kg7.frm
}


705 {
  z =c = p2 / pixel:
  z = z^p1 + c^p2 + c
  z <= p2
  ;SOURCE: kg7.frm
}


706 {
  z = c = p2 / pixel:
  z = z^p1 - c^p2 + c
  z <= p2
  ;SOURCE: kg7.frm
}


707 {
  z = c = p2 / pixel:
  z = z^p1 * c^p2 + c
  z <= p2
  ;SOURCE: kg7.frm
}


708 {
  z = c = p2 / pixel:
  z = z^p1 / c^p2 + c
  z <= p2
  ;SOURCE: kg7.frm
}


8 {; Edited by George Martin to add ":"
  z = pixel:
  z = z * sin(1/z)
  ;SOURCE: welner.frm
}


801 {
  z = x = p1/pixel:
  z = fn1 (z) * fn2 (x)
  x = fn1 (x) / fn2 (z)
  |z| < p2
  ;SOURCE: kg8.frm
}


802 {
  z = x = p1/pixel:
  x = fn1 (z) / fn2 (x)
  z = fn1 (x) * fn2 (z)
  |z| < p2
  ;SOURCE: kg8.frm
}


803 {
  z = x = p1/pixel:
  x = fn1 (z) * fn2 (x)
  z = fn1 (x) + fn2 (z)
  |z| < p2
  ;SOURCE: kg8.frm
}


804 {
  z = x = p1/pixel:
  x = fn1 (z) / fn2 (x)
  z = fn1 (x) + fn2 (z)
  |z| < p2
  ;SOURCE: kg8.frm
}


805 {
  z = c = 1/pixel:
  z = (fn1 (z) + c) / (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}


806 {
  z = c = 1/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}


807 {
  z = c = 1/pixel:
  z = (fn1 (z) + c) / (z - c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}


808 {
  z = c = 1/pixel:
  z = (fn1 (z) - c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}


809 {
  z = c = p1/pixel:
  z = (fn1 (z) + c) * (z + c + p2)
  |z| <= p2
  ;SOURCE: kg8.frm
}


810 {
  z = c = p1/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}


811 {
  z = c = p2/pixel:
  z = (fn1 (z) + c) * (z + c + p1)
  |z| <= p2
  ;SOURCE: kg8.frm
}


9 {
  z=pixel:
  z=(pixel*imag(z)+z)*z/real(z)+p1*pixel
  |z|<=4
  ;SOURCE: test.frm
}


901 {
  z = y = x = pixel:
  x = a*x + (b*x)*(x*x + y*y) + c*(x*x*x - 3*x*y*y) + d*(x*x - y)
  y = a*y + (b*y)*(x*x + y*y) + c*(3*x*x*y - y*y*y) -2*d*x*y
  a = p1
  b = -p1
  c = p2
  d = -p2
  z < 21
  ;SOURCE: kg9.frm
}


902 {
  z = z^p1 + x^p1 + y^1 + c
  x = p2*z*x + c
  y = p2*z*y + c 
  z < 5
  ;SOURCE: kg9.frm
}


903 {
  z = pixel:
  z = z * (p1-z) + c * p2
  z < 1
  ;SOURCE: kg9.frm
}


904 {
  z = pixel:
  z = z * (p1+z) + c * p2
  z < 1
  ;SOURCE: kg9.frm
}


905 {
  z = pixel:
  z = z * (p1-z) - c * p2
  z < 1
  ;SOURCE: kg9.frm
}


906 {
  z = pixel:
  z = z * (p1+z) - c * p2
  z < 1
  ;SOURCE: kg9.frm
}


907 {
  z = pixel:
  z = fn1 (z^p1 + c)
  z < p2
  ;SOURCE: kg9.frm
}


908 {
  z = x = pixel:
  z = fn1 (z) * fn2 (z)
  x = fn1 (x) / fn2 (x)
  z < p1
  ;SOURCE: kg9.frm
}


909 {
  z = x = pixel:
  x = fn1 (x) * fn2 (x)
  z = fn1 (z) / fn2 (z)
  z < p1
  ;SOURCE: kg9.frm
}


910 {
  z = x = pixel:
  z = fn1 (z) * fn2 (x)
  x = fn1 (x) / fn2 (z)
  |z| < p1
  ;SOURCE: kg9.frm
}


911 {
  z = x = pixel:
  x = fn1 (x) * fn2 (z)
  z = fn1 (z) / fn2 (x)
  |z| < p1
  ;SOURCE: kg9.frm
}


96 (ORIGIN) {; Sylvie Gallet [101324,3444], 1995
  z = pixel, c=(-0.63,-0.4) 
  r1 = 0.10, dr = 0.05, c1 = (-0.15,0.15) 
  r2 = 4*r1+dr, c2 = c1-3*r1-dr
  test1=(cabs(sqrt(|z-c1|)-r1-dr/2)<dr/2)
  test2=(r2<sqrt(|z-c2|))&&(sqrt(|z-c2|)<r2+dr)&&(z-c2>2*r1)&&imag(z-c2)<0
  test3=(r2<sqrt(|z+c2|))&&(sqrt(|z+c2|)<r2+dr)&&(z+c2<-2*r1)&&imag(z+c2)>0
  test = test1 || test2 || test3 :
  z2=z*z+c
  z=z*test + z2*(1-test)
  |z|<=100
  ;SOURCE: gallet-2.frm
}


9j {
  z=pixel:
  z=(p2*imag(z)+z)*z/real(z)+p1*p2
  |z|<=4
  ;SOURCE: test.frm
}

