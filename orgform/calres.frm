; these formula are needed to generate some of the sample images shown
; on Images pages 2 & 3 of the CALResCo web site http://www.calresco.force9.co.uk 
; I am not the author of any of these formulae, all of which are taken from .FRM
; files supplied with FRACTINT and/or FRACTXTRA packages. This collection is 
; assembled for the convenience of visitors to my Web site only and should not be
; incorporated into any collections without the original author's permission.
; Chris Lucas clucas@calresco.force9.co.uk

3jRatz-fn {z = Pixel :; from FN-RATZ.FRM (author unknown)
         z = (z * z * z * fn1(z) * p1 + p2 )/(z * z * fn2(z) * p1 + p2 ) , 
         | z | <= 10 }

3RDIM01  {;Mandelbrot from 4DFRACT.FRM (Gordon Lamb)
        z=p1*real(pixel)+flip(imag(pixel)),
        c=p2+real(pixel)+flip(imag(pixel)*p1):
        
        z=z*z+c, |z|<=64}

Hall-c {; Symmetry in Chaos from HALLWEEN.frm (Michael G. Wareman)
z = pixel:
z = (-2.7 + 5 * z * conj(z) + 1.5 * real(z ^ 6)) * z + 1 * conj(z * z) + c,
|z| <= 4
}

htd {; from NOEL.FRM (Noel Griffin)
; Try a second order inductive term.
      z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) }

mfn2fn = {; from KIM.FRM (Kim Best)
        z=pixel:
        power = fn2(z);
        z = fn1(z)^power + pixel,
        |z| < p2
        }

NewtonSinExp (XAXIS) {; frm IMPROVED.FRM (Chris Green)
   ; try fn1 = exp, fn2 = sin, fn3 = cos, p1 = 1, p2 = 0.0001
   ; note--use floating point
   z  = pixel:
   z1 = fn1(z)
   z2 = fn2(z)+z1-1
   z  = z-p1*z2/(fn3(z)+z1),
        p2 < |z2|
  }

NovaM       { ; Mandelbrot-like set for Nova. P2 is an inverse bailout,                set this to a small nonzero value and use                floating point. E.g. 0.0000001.  z=1  c=pixel:  z2=z*z  z3=z*z2  func=z3-1  der=3*z2  oz=z  z=z-(func/der)+c,  |oz-z|>p2}OK-12 { ;TRY FN1 = SQR, FN2 = SQR
; from NOVA.FRM (Paul Derbyshire)
   z = c = pixel:
   z = fn1(z) + c;
   z = fn2(z) / c,
   |z| <= (5 + p1)
  }

OK-09 {; from OVERKILL.FRM (c) Bradley Beacham
   z = c = pixel, d = fn1(pixel), k = 1 + p1:
   z = z^c * k;
   z = d / z,
   |z| <= (5 + p2)
  }

OK-12 { ;TRY FN1 = SQR, FN2 = SQR; from OVERKILL.FRM (c) Bradley Beacham
   z = c = pixel:
   z = fn1(z) + c;
   z = fn2(z) / c,
   |z| <= (5 + p1)
  }

OK-16 {; from OVERKILL.FRM (c) Bradley Beacham
  z = v = pixel :
   z = fn1(z)^v;
   v = v + z,
   |z| <= (5 + p1)
  }

OK-18 {; from OVERKILL.FRM (c) Bradley Beacham
   z = v = pixel:
   z = fn1(v) + real(z);
   v = fn2(z) + imag(v),
   |z| <= (5 + p1)
  }
  
pheonix(XAXIS)  {; from NOEL.FRM (Noel Griffin)
; Add conjugation and produce a great fractal even if it's spelt wrong.
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

PixNwt {; from CRAZYNWT.FRM (author unknown)
  z = pixel , Root = fn1(p2 * pixel):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
    .001 <= |z^p1 - Root|
  }

TileMandel { ; Terren Suydam (terren@io.com), 1996
             ; modified by Sylvie Gallet [101324,3444]
; from FRACTINT.FRM
  ; p1 = center = coordinates for a good Mandel
  ; 0 <= real(p2) = magnification. Default for magnification is 1/3
  ; 0 <= imag(p2) = numtiles. Default for numtiles is 3
  center = p1 , mag = real(p2)*(p2>0) + (p2<=0)/3
  numtiles = imag(p2)*(flip(p2)>0) + 3*(flip(p2)<=0)
  omega = numtiles*2*pi/3
  x = asin(sin(omega*real(pixel))) , y = asin(sin(omega*imag(pixel)))
  z = c = (x+flip(y)) / mag + center :
   z = z*z + c
    |z| <= 4
  }




