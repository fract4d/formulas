


hints {; All of these need float . They are all distorted M-Sets.
       }

Ilvifn1-iw { z = Pixel + 1/(fn1(p2*Pixel) - p1) :  
       
          z = sqr(z) +  Pixel + 1/(fn1(p2*Pixel) - p1) , | z | <= 4 }


Ilvifn1fn2-iw {;don't fuaget float to puute akkurattly !
          
          z = Pixel + 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1):  
       
          z = sqr(z) +  Pixel + 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1) , 
          
          | z | <= 4 }


Ilvifn1fn2-j {;don't fuaget float to puute akkurattly !
          
          z = Pixel + 1/(fn1(p2*Pixel)) + 1/(fn2(p2*Pixel)):  
       
          z = sqr(z) +  p1 + 1/(fn1(p2*p1)) + 1/(fn2(p2*p1)) , 
          
          | z | <= 4 }




fn {z = fn1(Pixel) + 1/fn2(Pixel - p1) :

           z = sqr(z) + fn1(Pixel) + 1/fn2(Pixel - p1) , | z | <= 4 }    



fn[1/c] {z = fn1(Pixel) + fn2(1/(Pixel - p1)) :

         z = sqr(z) + fn1(Pixel) + fn2(1/(Pixel - p1)) , | z | <= 4 }


ilvp+fn123 { 
  Ground = pixel+fn1(fn2(fn3(p2*pixel)))+fn1(fn3(fn2(p2*pixel))) ,
  z=Ground :
  z=sqr(z)+Ground,|z|<=4 }

ilvfn12rot {
       ; Exp( p1 * fn(|pixel|* ... )..) rotates the Pixels 
       ; according to their distance from the origin when
       ; p1 is chosen complex (real (p1) translates them). 
  Ground = pixel+1/fn1(p2*pixel*exp(p1*fn2(|pixel|))),
  z=Ground :
  z=sqr(z)+Ground,|z|<=4 }

ilvsqzz {; p1<0 complex,  ident, log
  Ground = pixel*fn1(p2*exp(p1*fn2(|pixel|)*imag(pixel))),
  z=Ground :
  z=sqr(z)+Ground,
  |z|<=4 }

ilvwav { 
  ;pix/|pix| is a complex number with length 1 and the direction of 
  ;the pixel.The faktor fn1(..) allows you to scale it the way 
  ;you want.  fn1=ident ,p1=1 should be the normal Mandl.
  Ground = pixel/|pixel|*fn1(p1 * |pixel|),
  z=Ground :
  z=sqr(z)+Ground,
  |z|<=4 }


Ilvifn1-iw1 {z = Pixel + fn1(p2*Pixel - p1) :  
       
          z = sqr(z) +  Pixel + fn1(p2*Pixel - p1) , | z | <= 4 }


Ilvifn1-iw3 {z = 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1):  
       
          z = sqr(z) + 1/(fn1(p2*Pixel) - p1) + 1/(fn2(p2*Pixel) - p1), 
          
          | z | <= 4 }


Ilvifn1-iw5 {z = 1/fn1(p1*Pixel) + 1/fn2(p2*Pixel) :  
       
          z = sqr(z) + 1/fn1(p1*Pixel) + 1/fn2(p2*Pixel), 
          
          | z | <= 4 }


