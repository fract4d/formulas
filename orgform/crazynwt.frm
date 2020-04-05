hints {; All of these need float . Nearly all are distorted Newtons.
       }

Komplexmatsch {
     z=pixel+1/fn1(p2*pixel)+1/fn2(p2*pixel):
     z=((p1-1)*z^p1+1)/(p1*z^(p1-1)); 
     0.001<=|z^p1-1|
}


Matsch^-1 { ;davon ist der K-Matsch die Julia-Menge
     Grund=pixel+1/(fn1(p2*pixel)-p1)+1/(fn2(p2*pixel)-p1),
     z=Grund:
            z=((Grund-1)*z^Grund+1)/(Grund*z^(Grund-1)); 
            0.001<=|z^Grund-1|
}



juli^-1 (XAXIS){ ;From this Newton is the Julia-Set
    z=pixel:
            z=((pixel-1)*z^pixel+1)/(pixel*z^(pixel-1)); 
            0.001<=|z^pixel-1|
}

Newton4fn12 {; 
  z = pixel+1/(fn1(p2*pixel-p1))+1/(fn2(p2*pixel-p1)), Root = 1:
   z3 = z*z*z;
   z4 = z3 * z;
   z = (3 * z4 + Root) / (4 * z3);
    .004 <= |z4 - Root|
  }

Newton5fn {; 
  z = pixel+1/fn1(p2 * pixel-p1) :
  z = (4*z^5+1)/(5*z^4); 
  0.001<=|z^5-1|
  }
Newton5fn12 {; 
  z = pixel+1/(2 * fn1(p2 * pixel-p1)) + 1/(2 * fn2(p2 * pixel-p1)) :
  z = (4*z^5+1)/(5*z^4); 
  0.001<=|z^5-1|
  }

N5fn1[fn2] {; 
  z = pixel+1/fn1(p2 * fn2(pixel-p1)) , Root = 1:
  z = (4 * z^5 + Root) / (5 * z^4);
  0.001 <= |z^5 - Root|
  }

MtNwt5_1/fn12 {; 
  z = 1/fn1(p1 * pixel) + 1/fn2(p2 * pixel), Root = 1:
  z = (4 * z^5 + Root) / (5 * z^4);
  0.001 <= |z^5 - Root|
  }
MtNwt5_fn12 {; 
  z = fn1(p1 * pixel) + fn2(p2 * pixel), Root = 1:
   z = (4 * z^5 + Root) / (5 * z^4);
    .001 <= |z^5 - Root|
  }

PixNwt {; 
  z = pixel , Root = fn1(p2 * pixel):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
    .001 <= |z^p1 - Root|
  }

PixNwt1/ {; 
  z = pixel , Root = 1/(2*fn1(p2 * pixel)) + 1/(2*fn2(p2 * pixel)):
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
    .001 <= |z^p1 - Root|
  }
PixNwtpwr {; 
  z = pixel , Root = pixel^p2 :
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
    .001 <= |z^p1 - Root|
  }
MtNwtfn1[fn2] {; 
  z = fn1(fn2(p2*pixel)) , Root = 1 :
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
    .001 <= |z^p1 - Root|
  }
Nwtp+fn123 {; 
  z = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel))) , Root = 1 :
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
    .001 <= |z^p1 - Root|
  }
Nwtfn123 {; 
  z = fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel))) , Root = 1 :
  z = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
    .001 <= |z^p1 - Root|
  }



Nwtfn12rot { ;The factor exp(p1*...) rotates the pixels
  ;according to their distance from the origin if p1 is 
  ;chosen complex.
  z = pixel+1/fn1(p2*pixel*exp(p1*fn2(|pixel|))) , Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4);
    .001 <= |z^5 - Root|
  }

Nwtsqzz { ; 
  ;The factor exp(p1*...) rotates the pixels
  ;according to their distance from the origin if p1 is 
  ;chosen complex.
  z = pixel*fn1(p2*exp(p1*fn2(|pixel|)*imag(pixel))) , Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4);
    .001 <= |z^5 - Root|
  }

Nwtsqzz2 { ; 
  z = pixel*fn1(p2*exp(p1*fn2(|pixel|*imag(pixel)))) , Root = 1 :
  z = (4 * z^5 + Root) / (5 * z^4);
    .001 <= |z^5 - Root|
  }

Nwtwav { 
  ;pix/|pix| is a complex number with length 1 and the direction of 
  ;the pixel.The faktor fn1(..) allows you to scale it the way 
  ;you want.  fn1=ident ,p2=1 should be the normal Newton.
  z = pixel/|pixel|*fn1(p2*|pixel|) , Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1));
    .001 <= |z^p1-Root|
  }

Nwtbumps { 
  z = fn1(pixel/|pixel|)*fn2(p2*real(pixel)*imag(pixel)) , Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1));
    .001 <= |z^p1-Root|
  }

Nwtbumps2 { 
  z = fn1(pixel/|pixel|)*fn2(p2*real(pixel)/imag(pixel)) , Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1));
    .001 <= |z^p1-Root|
  }

Nwtsimpl { 
  z = fn1(p2*pixel)/|pixel| , Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1));
    .001 <= |z^p1-Root|
  }

Nwttst { 
  z=pixel
  t = pixel*fn1(p2*|pixel|) , Root = 1 :
  z = ((t-1)*z^t+Root)/(t*z^(t-1));
    .001 <= |z^t-Root|
  }

Nwtbumps3 { 
  z = pixel + fn1( fn2( fn3( (pixel/|pixel|) * exp( p2 * |pixel|)))) , 
  Root = 1 :
  z = ((p1-1)*z^p1+Root)/(p1*z^(p1-1));
    .001 <= |z^p1-Root|
  }

Nwtvar1 { 
  z = pixel , Root = 1 :
  z = ((p2-1)*z^p1+Root)/(p2*z^(p1-1));
    .001 <= |z^p1-Root|
  }
Nwtvar3 { 
  z = pixel , Root = 1 :
  z = (real(p1)*z^5+Root)/(5*z^4);
    .001 <= |imag(p1)*z^p2-Root|
  }
Nwtvar4 {; there are real & imag just to have more params !
  ; don't start whith this , it's a grown one.
  ; To use it try to understand the basics it's made of.(var1 & p+fn123 &..)
  f = pixel*fn3(exp(fn2(|pixel|)*imag(pixel)*0.1*(pixel-conj(pixel)))) , 
  z = f+fn1(fn2(fn3(imag(p1)*f)))+fn1(fn3(fn2(imag(p1)*f)))  , 
  Root = 1 :
  z = ((p2-1)*z^real(p1)+Root)/(p2*z^(real(p1)-1));
    .001 <= |z^real(p1)-Root|
  }

