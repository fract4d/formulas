LL1-01 (XAXIS) {; first try
	z=0, c=pixel:        ;initialization
	z=z^2+c,             ;iteration
	z<=4                 ;bailout
	}

LL1-05 {; try variables
	z = pixel, g = p1*z*z, b = p1 + 2 :
	z = cos(z) * g - z
	z < b
	}

LL1-09  {z=pixel,b=p2+1:
	z=fn2(p1*fn1(z))
	|z|<b}

LL1-12  {z=0,p=pixel,a=p1*p*p*p:
	z=fn2(fn1(a))*fn3(z)
	z<p2+2}

LL2-01  { ; overlay LL1-06 and LL1-09
	z = pixel,c = (p1+1)*fn2(z*z*z),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1
	ELSE
	  z = fn2(p1*fn1(z))
	  PHC_bailout = |z| < b2
	ENDIF
	PHC_bailout}	  

LL2-02  { ; overlay LL1-08 and LL1-11
	z = pixel,c = fn2(z^p1),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1
	ELSE
          z = p1*fn2(z*z*z*fn1(z)) + fn1(fn2(fn3(z)))
	  PHC_bailout = z < b2
	ENDIF
	PHC_bailout}	  

LL2-03  { ; overlay LL1-11 and LL1-06
	z = pixel,c = (p1+1)*fn2(z*z*z),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = p1*fn2(z*z*z*fn1(z)) + fn1(fn2(fn3(z)))
	  PHC_bailout = z < b2
	ELSE
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1	
	ENDIF
	PHC_bailout}	  

LL2-04  { ; overlay LL1-09 and LL1-08
	z = pixel,c = fn2(z^p1),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = fn2(p1*fn1(z))
	  PHC_bailout = |z| < b2
	ELSE
	  z = fn1(z)*z*z+c
	  PHC_bailout = |z| < b1
     	ENDIF
	PHC_bailout}

LL2-05  { ;
	z = pixel,c = sqr(fn2(z)),b1 = p2+3,b2 = p2+1:
	IF (whitesq)
	  z = (fn1(z))^p1 - fn2(p1)
	  PHC_bailout = z < b2
	ELSE
	  z = fn1(c)*z*z+c
	  PHC_bailout = |z| < b1
     	ENDIF
	PHC_bailout}

