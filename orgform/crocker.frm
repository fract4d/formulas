CROCKER.FRM

Juliapns {
  c=p1
  z=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c,
  |z| <=4
  }

ManMiIa {
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c-abs(imag(z)),
    |z| <=4
    }

ManMiIaJ (ORIGIN) {
  z=pixel
  c=P1:
    z=sqr(z);
    z=z+c-abs(imag(z)),
    |z| <=4
    }

ManMiIm {   ;Compare Crescent
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c-imag(z),
    |z| <=4
    }

ManMiImJ (ORIGIN) {
  z=pixel
  c=P1:
    z=sqr(z);
    z=z+c-imag(z),
    |z| <=4
    }

ManMiRe (XAXIS) {   ;Compare Crescent
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c-real(z),
    |z| <=16
    }

ManMiReJ (ORIGIN) {
  z=pixel
  c=P1:
    z=sqr(z);
    z=z+c-real(z),
    |z| <=16
    }

ManPlIa {   ;Intended to be same as Slippery Slope
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c+abs(imag(z)),
    |z| <=4
    }

ManPlIaJ (ORIGIN) {
  z=pixel
  c=P1:
    z=sqr(z);
    z=z+c+abs(imag(z)),
    |z| <=4
    }

ManPlIm2 {
  z=0
  c=pixel:
    z=sqr(z);
    z=z+imag(z)+c,
    |z| <=4
    }

ManPlImJ (ORIGIN) {
  z=pixel
  c=P1:
    z=sqr(z);
    z=z+c+imag(z),
    |z| <=4
    }

ManPlP {
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c+real(c),
    |z| <=4
    }

ManPlQ {
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c+imag(c),
    |z| <=4
    }

ManPlRa {
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c+abs(real(z)),
    |z| <=4
    }

ManPlRaJ (ORIGIN) {
  z=pixel
  c=P1:
    z=sqr(z);
    z=z+c+abs(real(z)),
    |z| <=4
    }

ManPlRe {   ;Compare Cresent
  z=0
  c=pixel:
    z=sqr(z);
    z=z+c+real(z),
    |z| <=4
    }

ManPlReJ (ORIGIN) {   ;Compare Cresent
  z=pixel
  c=P1:
    z=sqr(z);
    z=z+c+real(z),
    |z| <=4
    }

Newdragon (xaxis) {
  z=.5
  c=pixel:
    z=c*(1-z)^2,
    |z| <=4
    }
JDrag (ORIGIN) {
  z=pixel+.5
  c=P1:
    z=c*z*(1-z),
    |z| <=4
    }

Prop (XAXIS) {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c,
    |z| <=4
    }

JuliaP {;Julia form of Prop formula. Is almost Origin symetrical.
  c=P1
  z=pixel:
   z=sqr(z);
   z=-z;
   z=conj(z);
   z=z+c,
   |z| <=4
   }

Prop2 {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c+imag(c),
    |z| <=4
    }

Prop2J (ORIGIN) {
  c=P1
  z=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c+imag(c),
    |z| <=4
    }

Prop3 {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c-imag(c),
    |z| <=4
    }

Prop3J (ORIGIN)  {
  c=P1
  z=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c-imag(c),
    |z| <=4
    }

Prop4 {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c+imag(z),
    |z| <=4
    }

Prop4J (ORIGIN) {
  c=P1
  z=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c+imag(z),
    |z| <=4
    }

Prop5 {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c-imag(z),
    |z| <=4
    }

Prop5J (ORIGIN) {
  c=P1
  z=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c-imag(z),
    |z| <=4
    }

PropMiIm {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c-imag(z),
    |z| <=4
    }

PropPlIm {
  z=0
  c=pixel:
    z=sqr(z);
    z=-z;
    z=conj(z);
    z=z+c+imag(z),
    |z| <=4
    }

tangent { ; Scientific American puzzle.
  z=pixel
  c=pixel:
    z=z*tan(z)+c,
    |z| <=4
    }
Parameter file for problem area.

juliap             { ; Effect strongly depends on magnification.
  reset=1611 type=formula formulafile=crocker.frm formulaname=Juliap
  passes=b corners=-0.0784/0.0784/-0.0588/0.0588
  params=0.87660000000000005/0.15301999999999999 float=y maxiter=255
  inside=maxiter
  colors=CCC000GCG<19>sCs<20>ECsCCsCEs<19>CqsCssCsq<19>CsECsCEsE<19>qsqsss\
  ssq<19>ssEssCsqC<19>sECsCCqCC<21>ACCCCC<21>sCs<20>ECsCCsCEs<19>CqsCssCsq\
  <8>Cs_000
  }
Enough for now.
               Charles
Charles F Crocker   chasc@ccsnet.com
---
