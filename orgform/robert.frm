Path: unixg.ubc.ca!nntp.cs.ubc.ca!newsxfer.itd.umich.edu!sol.ctr.columbia.edu!howland.reston.ans.net!EU.net!sun4nl!news.nic.surfnet.nl!tuegate.tue.nl!blade.stack.urc.tue.nl!robertk
From: robertk@stack.urc.tue.nl (Robert Klep)
Newsgroups: alt.binaries.pictures.fractals
Subject: ROBERT.FRM (for Fractint)
Date: 22 Feb 1994 10:43:37 GMT
Organization: MCGV Stack, Eindhoven University of Technology, the Netherlands.
Lines: 184
Message-ID: <2kcnkp$ggv@tuegate.tue.nl>
NNTP-Posting-Host: blade.stack.urc.tue.nl
X-Newsreader: TIN [version 1.2 PL2]
 
---------------------------* Cut here *-----------------------------
 
comment {
     These fractal-formulae were created (some probably already exist) by:
 
		Robert Klep, robertk@stack.urc.tue.nl
 
     Please use them as you like, adjusting/rewriting them.
     If you have some nice things yourself, please mail them to me, I'm
     always looking for nice new formulae.
     }
 
MandelVar1 (XAXIS) {; try p1=0.367879441 (= 1/e)
   c = z = pixel:
   z = sqr(z) + c + p1;
    |z| <= 4
  }
 
MandelVar2 (XAXIS) {;  
   c = z = 1 / pixel:
   z = sqr( sqr(z*c)) + c + p1;
    |z| <= 4
  }
 
MandelVar3 (XAXIS) {;   inverted MandelVar2
   c = z = pixel:
   z = sqr( sqr(z*c)) + c + p1;
    |z| <= 4
  }
 
Fn1 (XAXIS) {;  
   c = z = pixel:
   z = fn1(z) + c + p1;
  }
 
MandelSin1 (XAXIS) {;  
   c = z = pixel:
   z = sqr(z * sin(z)) + c + p1;
   |z| <= 4  
  }
 
MandelLog1 (XAXIS) {;  
   c = z = pixel:
   z = sqr(log(z^z)) + c + p1;
   |z| <= 4
  }
 
SinCos1 (XAXIS) {;  
   c = z = pixel:
   z = sin (cos(z^c)) +c +p1;
   |z| <= 4
  }
 
Sin1 (XAXIS) {;  
   c = z = pixel:
   z = (1-(z^sin(1.1-z))) + c + p1;
   |z| <= 4
  }
 
Cos1 (XAXIS) {;  
   c = z = pixel:
   z = (1-(z^cos(1.1-z))) + c + p1;
   |z| <= 4
  }
 
MandelVar4 (XAXIS) {;  
   c = z = pixel:
   z = sqr(z) + (1/c) + p1;
   |z| <= 4
  }
 
MandelVar5 (XAXIS) {;  
   c = z = pixel:
   z = sqr(z*cos(tan(c))) + exp(c) + p1;
   |z| <= 4
  }
 
MandelVar6 (XAXIS) {;  
	c = z = pixel:
	z = (sqr(1/sin(1+z)+ c))*c + c + p1;
	|z| <= 4
	}
 
MandelVar7 (XAXIS) {;  
	z = pixel:
	c = log(1+z);
	z = sqr(z) + c + p1;
	|z| <= 4
	}
 
Robert1 (XAXIS) {;  
	c = z = pixel:
	z = ((z+c)+(z*z+c*c)+(z*z*z+c*c*c)) + c; 
	|z| <= 4
	}
 
MandelVar8 (XAXIS) {;   
	c = z = pixel:
	z = ((z*c)/(z*c+2.718281828)+sin(z))^2 + c;
	|z| <= 4
	}
 
DivMandel1 (XAXIS) {;  
	c = z = pixel:
	z = (z^2+c)/(z^p1-c) + c;
	|z| <= 4
	}
 
DivMandel2 (XAXIS) {;   try real(p1)=1, imag(p1)=2
	z = pixel:
	c = z^p1
	z = (z^4+c)/(z^3+c);
	|z| <= 4
	}
 
DivMandel3 (XAXIS) {;  
	z = pixel:
	c = z^p1 + srand(3)
	z = (z^4+c)/(z^3+c) + srand(5)
	|z| <= 4
	}
 
Fn2 (XAXIS) {;  
	c = z = pixel:
	z = fn1(z)*fn2(z*z) + c
	}
 
Fn3 (XAXIS) {;  
	c = z = pixel:
	z = fn2(z)*fn2(z) + c
	}
 
Fn4 (XAXIS) {;  
	c = z = pixel:
	z = fn1(z)*fn1(z) + c
	}
 
Fn4Inv (XAXIS) {;  
	c = z = pixel:
	z = 1/(fn1(z)*fn1(z)+c)
	}
 
Fn5 (XAXIS) {;  
	c = z = pixel:
	z = fn2(z*z)*fn2(z) + c
	}
 
Fn6 (XAXIS) {;  
	c = z = pixel:
	z = fn1(z*z)*fn2(z) + c
	}
 
Fn7 (XAXIS) {;  
	c = z = pixel:
	z = fn2(z*z)*fn1(z*z) + c
	}
 
Fn8 (XAXIS) {;  
	c = z = pixel:
	z = fn3(z)*fn2(z)*fn1(z) + c
	}
 
MandelVar9 (XAXIS) {;  
	z = pixel:
	c = z/(z*z+1)
	z = sin(z^4 + c) + real(c)
	|z| <= 4
	}
 
MandelVar10 (XAXIS) {;  
	c = z = pixel:
	value1 = 1 + p1
	value2 = 1 + p2
	z = (z^value2)^(value1) + c
	|z| <= 4
	}
 
Lyapunov1 (XAXIS) {;  
	z = pixel:
	value = 1 + p1
	z = value*z*(1-z)
	}
 
 
