Doozy18 (yaxis)   {; Bill Rossi <billatny@aol.com>
                   ; FractInt List -- 16 Sep 1995 17:11:19 -0400
  z = pixel, c=fn1(z)/fn2(z):
   t=fn3(z),
   l=t/fn1(t),
   fn1(z)=l,
   z=z/fn4(c)/l+fn1(z),
   |z| <= 4
  }

NewOne3 (yaxis)   {; Bill Rossi <billatny@aol.com>
                   ; FractInt List -- 16 Sep 1995 17:11:19 -0400
  z = pixel:
   temp1 = fn1(z) / fn2(z),
   temp2 = fn3(z) - fn4(z),
   temp3 = fn1(z) * fn3(z),
   z = temp1 / temp2 - temp3,
   |z| <= 4
  }

Billsfrm (YAXIS)  {; Bill Rossi <billatny@aol.com>
                   ; FractInt List -- 16 Sep 1995 17:11:19 -0400
                   ; Based on a formula by Paul Carlson
  z = pixel:
   z = (fn1(z)^4) / (fn2(z)^3) / (fn3(z)^2) / (fn4(z)),
   |z| <=4  }

BILL13 (yaxis)    {; Bill Rossi <billatny@nyiq.net>
                   ; FractInt List -- Mon, 26 Aug 1996 21:54:30 GMT
  z=pixel,pi=3.142857142857:
   z=fn1(z)/fn2(z)-(fn3(z)*pi),
   z=fn4((z)^pi),
   |z| <= 4
  }

afract006 (yaxis) {; Bill Rossi <BillatNY@aol.com>
                   ; FractInt List -- Sun, 3 Nov 2002 13:39:08 EST
  z = pixel,c=z / (z-1):
   z = z + c,
   z = fn1(z) + fn2(z),
   z = fn3(z) / fn4(z),
   |z| <= 4
  } 