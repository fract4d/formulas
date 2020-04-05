

w1 {
  z=pixel, a=real(p1), b=imag(p1):
  h=z^a+((-h)*z-1)
  j=(z^a)
  z=(z*h/j)+whitesq
  |z|<a || |z|<b
  ;SOURCE: ad978-1.frm
}


w1a {; Eliminated superfluous variable "e". G. Martin
  z=pixel:
  a=real(p1), b=imag(p1), c=real(p2), d=real(p3)
  h=fn1(z^a+((c-d)*z-b))
  j=fn2((c*z^d+d))
  z=(z*h/j)+whitesq
  |z|<=4
  ;SOURCE: ad978-1.frm
}


w1b {
  z=pixel, a=real(p1), b=imag(p1):
  h=z^a+((-b)*z-1)
  j=fn1(z^a)
  z=fn2(z*h/j)+whitesq
  |z|<a && |z|<b
  ;SOURCE: ad978-1.frm
}


w1d {
  z=pixel, a=real(p1), b=imag(p1):
  h=(z*a)*((-b)*z-1)
  j=fn1(z*a)
  z=fn2(z*h/j)+whitesq
  |z|<a || |z|<b
  ;SOURCE: ad978-1.frm
}


w2 {
  z=pixel, b=(p1*fn2(z)/p2), k=real(p1)*b, o=imag(p1):
  z=fn1(real(z))+flip(imag(z))
  IF (b+(fn1(z+p1))/imag(p1))<k+(z+(p2))
    z=(z+p3)*(1/fn3(z))+whitesq
  ENDIF
  IF (b+(fn1(z+p1))<imag(p1*(b-k)))
    z=(z^(p2)+whitesq)+fn2(b/(k+o))
  ENDIF
  |z|<real(p1) && |z|<imag(p1)
  ;SOURCE: ad978-1.frm
}


w3 {; Replaced variable "e" with "ee" 5/05/99. G. Martin
  z=pixel:
  a=real(p1), b=fn1(imag(p1)), c=real(p2)
  c1=imag(p2), d=real(p3), ee=imag(p3)
  h=fn2(z*b)+fn3(c1*(z-ee))
  j=fn4(a*(z/c+d))
  z=(z*(h+j))+whitesq
  |z|<=4
  ;SOURCE: ad978-1.frm
}


WaldoTwinsC (XAXIS_NOPARM) {
  z=p1:
  z=cosxx(sin(z+pixel))+pixel 
  |z|<=4
  ;SOURCE: choice.frm
}


WaldoTwinsC.1 (XAXIS_NOPARM) {
  z=p1:
  z=cos(sin(z+pixel))+pixel 
  |z|<=4
  ;SOURCE: choice.frm
}


WALLFRM {; Mandelbrot tiler, Ray Girvan, May 1997
         ; use floating-point
         ; use periodicity=no (press "g" to enter)
         ; p1= location of motif centre in Mandelbrot
         ; p2 = magnification (from Fractint)
  z=c=p1+(0.5/p2)*(tan(sin(real(pixel)))+flip(tan(sin(imag(pixel))))):
  z=z*z+c
  |z| <= 64
  ;SOURCE: 97msg.frm
}


Warning! {; You must try the RECIP function
          ; Revised for Fractint v20 by G. Martin
  z = pixel:
  z = fn1(z) + pixel + p1 
  z = (1/sqrt(z)*(exp(-1/2)))
  z = z * imag(z)
  |z| < 4
  ;SOURCE: omicron.frm
}


WarpEngines (XAXIS) {; Try params=2/1000/0/0
  c=z=pixel: 
  z=z^Real(p1)+c 
  |z^c|<=Imag(p1)
                     ; "Full speed ahead Mr. Sulu!"
  ;SOURCE: fractfun.frm
}


Wave {; Sylvie Gallet [101324,3444], 1996
      ; formula based on Tim Wegner's Graph-3
  d = cabs(pixel), k = real(p2)
  value = sin(k*d)/d
  min = real(p1), max = imag(p1)
  incr = (max - min)/256, z = min :
  z = z + incr
  z <= value
  ;SOURCE: 96msg.frm
}


Waves (XAXIS) {; Try params=2/50/2/1
  c=z=pixel: 
  z=z^Real(p1)+c 
  |Real(z)*Real(p2)|+|Imag(z)*Imag(p2)|<=Imag(p1)
               ; "She canna take this much longer Cap'n!"
  ;SOURCE: fractfun.frm
}


wax {; Giuseppe Zito
  z = pixel
  c5 = -0.429507
  c10 = 0.68116
  c11 = 0.770711
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *x
  s0 = s0 /c5
  s0 = s0 *y
  s0 = s0 *y
  s0 = s0 +c10
  s0 = s0 +c11
  s0 = s0 *y
  newx = s0 
  s0 = y
  s0 = s0 -x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


weirdo {; Mandelbrot with no bailout test
  z = c = pixel:
  z = z*z + c
  ;SOURCE: frmtutor.frm
}


welcome {; Giuseppe Zito
  z = pixel
  d2 = -0.421846
  d3 = 0.012126
  d6 = -0.62995899
  d10 = 0.68319201
  : 
  x = real(z), y = imag(z)
  s0 = x
  s0 = s0 *y
  newx = s0 
  s0 = x
  s0 = s0 *x
  s0 = s0 -d2
  s0 = s0 +d3
  s0 = s0 *y
  s0 = s0 +d6
  s0 = s0 *y
  s0 = s0 -d10
  s0 = s0 *x
  s0 = s0 -x
  s0 = s0 /x
  newy = s0 
  z = newx + flip(newy)
  newx < 4 && newx > -4 && newy < 4 && newy > -4 
  ;SOURCE: zg.frm
}


wha01 {; Use a counter to gradually change size of value added
       ; Bradley Beacham  [74223,2745]
       ; P1 sets value of constant (try 0.01, for example)
       ; P2 varies bailout value
  z = c = pixel, iter = 0, test = 4 + p2:
  iter = iter + 1
  z = z*z + iter*p1 + c
  |z| < test
  ;SOURCE: snazzy.frm
}


wha02 {; Use a counter to gradually change proportions of algorithms
       ; Bradley Beacham  [74223,2745]
       ; P1 sets starting value for k
       ; P2 varies step size for incrementing k
       ; P3 varies bailout value
  z = c = pixel, k = p1, kstep = .01 + p2, limit = 4 + p3:
  k = k + kstep
  z = k*(z*z*z) + (1-k)*(z*z) + c
  |z| < limit
  ;SOURCE: snazzy.frm
}


wha03 {; Use a counter to gradually change exponent
       ; Bradley Beacham  [74223,2745]
       ; P1 varies starting value for exponent
       ; P2 varies step size for incrementing exponent
       ; P3 varies bailout value
  z = c = pixel, ex = 2 + p1, step = p2, limit = 4 + p3:
  z = z^ex + c
  ex = ex + step
  |z| < limit
  ;SOURCE: snazzy.frm
}


Whatever_00m (XAXIS) {; Original formula Whatever_the_name
                      ; corrected by Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1 
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}


Whatever_01 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=z*z+(1/z*z)+pixel
  ;SOURCE: 96msg.frm
}


Whatever_01_m (XYAXIS) {; Original formula Whatever_the_name
                        ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=z*z, a2=1/a1, a=a1+a2
  z=a+pixel
  ;SOURCE: 96msg.frm
}


Whatever_01m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1 
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}


Whatever_02 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=z*z+(2/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}


Whatever_02m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=2/a1
  z=a1+a2+pixel
  ;SOURCE: jo_we_32.frm
}


Whatever_03 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*z+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}


Whatever_03m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*z+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}


Whatever_04 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*z+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}


Whatever_04m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*z+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}


Whatever_05 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z*z)+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}


Whatever_05m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}


Whatever_06 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z*z)+(1/z*z)+pixel
  |z|>=0.05
  ;SOURCE: jo_we_31.frm
}


Whatever_06m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(a1)+a2+pixel
  |z|>=0.05
  ;SOURCE: jo_we_32.frm
}


Whatever_07 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}


Whatever_07m  {; Original formula Whatever_the_name
               ; corrected and modified by 
               ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}


Whatever_08 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}


Whatever_08m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}


Whatever_09 (XYAXIS) {; Original formula Whatever_the_name
                      ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(p1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}


Whatever_09m (XYAXIS) {; Original formula Whatever_the_name
                       ; corrected and modified by 
                       ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=p1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}


Whatever_10 {; Original formula Whatever_the_name
             ; modified by Jo Weber [100424,35], 6/1996
  z = pixel:
  z=fn1(z)*fn2(z)+(p1/z*z)+pixel
  ;SOURCE: jo_we_31.frm
}


Whatever_10m {; Original formula Whatever_the_name
              ; corrected and modified by 
              ; Jo Weber [100424,35], 6/1996
  z = pixel:
  a1=sqr(z), a2=p1/a1
  z=fn1(z)*fn2(z)+a2+pixel
  ;SOURCE: jo_we_32.frm
}


Whatever_the_name (XAXIS) {
  z = pixel:
  z=z*z+(1/z*z)+pixel
  ;SOURCE: whatever.frm
}


Whatzit {; Dan Farmer  -  from thread in General Information.
         ; was (ORIGIN) - but this doesn't work properly
  z = pixel:
  z = ((2*z^3) - (3*z^2)+1) ^ p1
  |z| <=4
  ;SOURCE: whatzit.frm
}


Whatzit1 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |z| <=4
  ;SOURCE: whatzit.frm
}


Whatzit2 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
  ;SOURCE: whatzit.frm
}


Whatzit3 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = fn1((real(p1)*z^3) - fn2(imag(p1)*z^2)+1) ^ fn3(p2)
  |z| <=4
  ;SOURCE: whatzit.frm
}


Whatzit4 {; Dan Farmer  -  from thread in General Information.
  z = fn1(pixel):
  z = ((real(p1)*z^3) - (imag(p1)*z^2)+1) ^ p2
  |real(z)| <=100  ||  |imag(z)| <=100
  ;SOURCE: whatzit.frm
}


Whatzit5 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = fn1((real(p1)*z^3) - fn2(imag(p1)*z^2)+1) ^ fn3(p2)
  |real(z)| <=10  ||  |imag(z)| <=10
  ;SOURCE: whatzit.frm
}


Whatzit6 {; Dan Farmer  -  from thread in General Information.
  z = pixel:
  z = fn1((real(p1)*z^3) - fn2(imag(p1)*z^2)+1) ^ fn3(p2)
  |real(z) * imag(z)| <= 4
  ;SOURCE: whatzit.frm
}


Whatzit7 {; Dan Farmer  -  from thread in General Information.
  z = pixel, c = imag(p2):
  z = fn1((real(p1)*z^3) - fn2(imag(p1)*z^2)+1) ^ fn3(real(p2)) + c
  |real(z)| <=10  ||  |imag(z)| <=10
  ;SOURCE: whatzit.frm
}


wiltetrate {; by me
  z = pixel :
  z=z^(cotanh(z^.5))+pixel
  |z|<=4
  ;SOURCE: wilson.frm
}


wiltetrate_gen { 
  z = pixel :
  z=z^(fn1(z^real(p1)))+pixel
  |z|<=4
  ;SOURCE: 98msg.frm
}


wiltetrate_orig {; by me
  z = pixel :
  z=z^(cotanh(z^.5))+pixel
  |z|<=4
  ;SOURCE: 98msg.frm
}


Wineglass (XAXIS) {; Pieter Branderhorst
  c = z = pixel:
  z = z * z + c
  c = (1+flip(imag(c))) * real(c) / 2 + z
  |z| <= 4
  ;SOURCE: fractint.frm
}


Wing {; Edited for Fractint v. 20 by George Martin, 10/98
      ; This formula used LastSqr as a variable without any
      ; use of the function Sqr, resulting in garbage values
      ; being assigned to the LastSqr variable by the parser.
      ; The following gives a good approximation of the images
      ; created in integer mode with the old formula.
  z = pixel
  c = cotan(3,9):
  z = c / (z*z*z + pixel) 
  |z| <= 42
  ;SOURCE: hubert.frm
}


WK980711 {; Modified Cdp_Jul_Mand frm (Paul Carlson)
    ; Always use float=y, outside=summ
    ; real(p1) = 0 if Mset, otherwise Julia set
    ; imag(p1) = maximum value of ratio (try 0.01 to 0.40)
    ; p2       = Julia set coordinates (not used if Mset)
    ; real(p3) = number of color ranges
    ; imag(p3) = number of colors in a range
    ;
  z = iter = range_num = bailout = 0
  IF (real(p1) == 0)
    prev_w = 0
    c = pixel
  ELSE
    prev_w = pixel
    c = p2
  ENDIF
  max_r = imag(p1)^2
  num_ranges = real(p3)
  colors_in_range = imag(p3)
  colors_in_range_1 = colors_in_range - 1
  :
  w = prev_w * prev_w + c
    ;
  r = |prev_w| / |w|
  prev_w = w
  IF (r < max_r && iter > 0)
    bailout = 1
    z = colors_in_range_1 * r / max_r + range_num * colors_in_range + 1
  ENDIF
  range_num = range_num + 1
  IF (range_num == num_ranges)
    range_num = 0
  ENDIF
  iter = iter + 1
  z = z - iter
  bailout == 0 && |w| < 4
  ;SOURCE: 98msg.frm
}


WK990208 {; Eliminated superfluous variable "c". G. Martin, 7/26/99
  z=pixel:
  z = z * z + pixel
  IF (fn1(|z|) < .05)
    z = z * 100
  ENDIF
  |z| < 4
  ;SOURCE: 99msg.frm
}


Wontfin (XAXIS) {
  z = pixel:
  z = | log(z) | + sin(z) 
  |z| <= 50
  ;SOURCE: hubert.frm
}


Woven {; Jim Muth
       ; As Posted in Fractal-Art, 4/97
  z=pixel 
  c=p1:
  z=(-z)^1.05+c
  |z| <= 100
  ;SOURCE: 97msg.frm
}

