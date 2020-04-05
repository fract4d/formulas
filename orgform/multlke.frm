;Formulas by Albrecht Niekamp, Duesseldorf
 ;using the lake formula by Sylvie Gallet.
 ;This file continues the Multi2 and Multi3
 ;formula files.
 ;As some of the new features are used,
 ;be sure you have downloaded the latest Fractint version, 
 ;Fractint 20.02.4 or later.
 ;The fomulas correspond to the par-files (Multlke.par)
 ;with the same number.
 ;
 ;I´ll be happy to get some feedback of any kind!
 ;
 ;Albrecht.niekamp@t-online.de 
 ;
 ;

Multi_lake1  { ; Sylvie Gallet, Jan 16, 2000
 ; Multifrac variations Albrecht Niekamp
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: 0 = lake transform disabled
 ;                  any value between 0 and 100: water level in % of
 ;                  the screen height (0 = bottom, 100 = top)
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 
 ; This formula uses the new predefined variables:
 ; center  = (x  , y)
 ; magxmag = (mag, xmagfactor)
 ; rotskew = (rot, skew)
 
 bailout = real(p2)
 
 if (imag(p2) > 0 && imag(p2) <= 100)
 
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
 
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
 
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
 
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
 
   z = pixel - z3rd
 
   b = imag(conj(u)*z) / imag(conj(u)*v)
 
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
 
   z = z + z3rd
 
 else
   z = pixel
 endif
 
 if (ismand)
   c = z
 else
   c = p1
 endif
 :
 
 ; multifrac3 
   y2=y*y
   x2=x*x
   x=x2-y2-real(p1)
   y=x2*x*y-imag(p1)
   z = sqr(z)+x+y
   |z| <=bailout
   }


;
; This file requires fractint 20.02.4 or later
;
Multi_lake2 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height 
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(p1)
   y = 2*x*y-imag(p1)
   z = z^(z+x-y)    
   |z| <=bailout
   }


;
; This file requires fractint 20.02.4 or later
;
Multi_lake3 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac 20 variation 
   y2 = y*y
   x2 = x*x
   x = x2-y2-c
   if (whitesq)
   y=2*x*y-p1
   z = z^(z-x-y)
   else
   y=2*x*y-p1
   z = z^(z-x+y)    
   endif
   |z| <= bailout
   }


;
; This file requires fractint 20.02.4 or later
;
Multi_lake3a { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac 20 variation 
   y2 = y*y
   x2 = x*x
   x = x2-y2-c
   if (whitesq)
   y=2*x*y-real(c)
   z = z^(z-x+y)
   else
   y=2*x*y-imag(c)
   z = z^(z+x-y)    
   endif
   |z| <= bailout
   }


;
; This file requires fractint 20.0.6 or later
;
Multi_lake3b { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac 20 variation 
   y2 = y*y
   x2 = x*x
   x = x2-y2-c
   if (whitesq)
   y=2*x*y-real(c)
   else
   y=2*x*y-imag(c)
   endif
   z=z*z-x-y
   |z| <= bailout
   }


;
; This file requires fractint 20.0.6 or later
;
Multi_lake3c { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height 
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (whitesq)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 else
 z=pixel
 c=p1
 endif
 x=0
 y=0
 :
 ; multifrac 20 variation 
   y2 = y*y
   x2 = x*x
   x = x2-y2-c
   if (whitesq)
   y=2*x*y-real(c)
   else
   y=2*x*y-imag(c)
   endif
   z=z*z-x-y
   |z| <= bailout
   }


;
; This file requires fractint 20.0.6 or later
;
Multi_lake4 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height 
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7 
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z = z^(z+x-y)    
   |z| <=bailout
   }


;
; 
;
Multi_lake5 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ;multifrac13 
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z = sqr(z+x2+y2)
   |z| <= bailout
   }


multilake_6 {
 ; p1: all layers
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height 
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 ; p4:third axis layers 2,3
 
 cr=real(scrnpix)+2*imag(scrnpix)  
 r=cr-4*trunc(cr/real(4))
 bailout = real(p2)
 if (r==0)
  if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   m = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * m * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
   else
   z=pixel
   endif 
  if (ismand)
   c = z
   else
   c = p1
  endif
 elseif (r==1)
  if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3+0.1)                ; amplitude of the wave
   freq = imag(p3+100)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   m = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * m * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
   else
   z=pixel
   endif
  if (ismand)
   c = z
  else
   c = p1
  endif 
 else
   z=pixel
   c=p1
 endif
   x=0
   y=0
   w=0
   :
   y2 = y*y
   x2 = x*x
   w2 = w*w
   x=x2-y2-real(c)
   if (r==0)
   y=2*y2*x2-imag(c)
   z=fn1(z+x+y)
   phc_bailout = |z| <(bailout-(x2*y2))  
   elseif (r==1)
   y=2*y2*x2-imag(c)
   w=2*w2*x2-real(p4)
   z=fn1(z+x+y+w)
   phc_bailout = |z| < (bailout-(x2*y2*w2))  
   elseif (r==2)
   y=2*y2*x2-imag(c)
   w=2*w2*y2-imag(p4)
   z=fn1(z+x+y+w)
   phc_bailout = |z| < (bailout-(x2*y2*w2))
   else
   y=2*x2*y2-imag(c)
   z=fn1(z+x+y)
   phc_bailout = |z| < (bailout-(x2+y2))
   endif
   phc_bailout
   }


multilake_7 {
 ; p1: all layers
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height 
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 ; real part of p4: amplitude second lake
 ; imag part of p4: frequency second lake
 ; p5: third axis, layers 2 and 3
 ;
 cr=real(scrnpix)+2*imag(scrnpix)  
 r=cr-4*trunc(cr/real(4))
 bailout = real(p2)
 if (r==0)
  if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100        
   ampl = real(p3)                
   freq = imag(p3)               
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   m = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * m * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
   else
   z=pixel
   endif 
  if (ismand)
   c = z
   else
   c = p1
  endif
 elseif (r==1)
  if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         
   ampl = real(p4)              
   freq = imag(p4)          
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   m = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * m * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-m-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
   else
   z=pixel
   endif
  if (ismand)
   c = z
  else
   c = p1
  endif 
 else
   z=pixel
   c=p1
 endif
   x=0
   y=0
   w=0
   :
   y2 = y*y
   x2 = x*x
   w2 = w*w
   x=x2-y2-real(c)
   if (r==0)
   y=2*y2*x2-imag(c)
   z=fn1(z+x+y)
   phc_bailout = |z| <(bailout-(x2*y2))  
   elseif (r==1)
   y=2*y2*x2-imag(c)
   w=2*w2*x2-real(p5)
   z=fn1(z+x+y+w)
   phc_bailout = |z| < (bailout-(x2*y2*w2))  
   elseif (r==2)
   y=2*y2*x2-imag(c)
   w=2*w2*y2-imag(p5)
   z=fn1(z+x+y+w)
   phc_bailout = |z| < (bailout-(x2*y2*w2))
   else
   y=2*x2*y2-imag(c)
   z=fn1(z+x+y)
   phc_bailout = |z| < (bailout-(x2+y2))
   endif
   phc_bailout
   }


;
; This file requires fractint 20.0.6 or later
;
Multi_lake8 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height 
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7 
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(p1)
   y = 2*x*y-imag(p1)
   z = (z+x-y)^z    
   |z| <=bailout
   }


;
; This file requires fractint 20.0.6 or later
;
Multi_lake9 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7 
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z = z^(z+x+y)    
   |z| <=bailout
   }


;
; This file requires fractint 20.0.6 or later
;
Multi_lake10 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height 
 ; real part of p3: amplitude 
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7 variation
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z =(z+x)^(z-y)    
   |z| <=bailout
   }


;
; This file requires fractint 20.0.6 or later
;
Multi_lake11 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7 variation
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z =(z-x)^(z-y)    
   |z| <=bailout
   }


Multi_lake12 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7 variation
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z =(z*x)^(z*y)    
   |z| <=bailout
   }


Multi_lake13 { 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 if (ismand)
   c = z
 else
   c = p1
 endif
 x=0
 y=0
 :
 ; multifrac7 variation
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z =(z+x)^(z*y)    
   |z| <=bailout
   }


Multi_lake14 { ;additional 3d effect 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 fac = real(p4)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 u=fn1(t/fac)
 if (ismand)
   c = z+u
 else
   c = p1+u
 endif
 x=0
 y=0
 t=0
 :
 ; multifrac7_3d_variation
   t=t+1
   y2 = y*y
   x2 = x*x
   x = x2-y2-real(c)
   y = 2*x*y-imag(c)
   z =(z+x)^(z*y)    
   |z| <=bailout
   }


Multi_lake15 { ;additional 3d effect 
 ;
 ; p1: Julia seed
 ; real part of p2: bailout value
 ; imag part of p2: water level in % of the screen height
 ; real part of p3: amplitude of the wave (try 0.2)
 ; imag part of p3: frequency (try 300)
 bailout = real(p2)
 fac = real(p4)
 if (imag(p2) > 0 && imag(p2) <= 100)
   level = imag(p2) / 100         ; water level
   ampl = real(p3)                ; amplitude of the wave
   freq = imag(p3)                ; frequency
   angle = real(rotskew * pi / 180)
   exp_irot = exp(-flip(angle))
   h = 1 / real(magxmag)
   w = h / 0.75 * imag(magxmag)
   tanskew = tan(imag(rotskew * pi / 180))
   u = 2 * w * exp_irot
   v = 2 * h * (tanskew + flip(1)) * exp_irot
   z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
   z = pixel - z3rd
   b = imag(conj(u)*z) / imag(conj(u)*v)
   if (b <= level)
     dy = level - b
     z = z + 2*dy * (1+ampl*sin(freq*dy^0.2)) * v 
   endif
   z = z + z3rd
 else
   z = pixel
 endif
 u=cos(t/fac)
 if (ismand)
   c = z*u
 else
   c = p1*u
 endif
 x=0
 y=0
 t=0
 :
 ; multifrac7_3d_variation
   t=t+1
   y2 = y*y
   x2 = x*x
   x = x2-y2+imag(c)
   y = 2*x*y+real(c)
   z =(z*x)^(z*y)   
   |z| <=bailout
   }
 