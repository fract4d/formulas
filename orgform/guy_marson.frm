
multi010   { ; Guy Marson <guy.marson@mnhn.lu>
             ; Mon, 06 May 2002 15:21:45
z=c=pixel:
z=fn1(z)^p1+c
|z| <=4
}

multi011   { ; Guy Marson <guy.marson@mnhn.lu>
             ; Mon, 06 May 2002 15:21:45
z=c=pixel:
z=z^p1+c
|z| <=4
}

multi013   { ; Guy Marson <guy.marson@mnhn.lu>
             ; Mon, 06 May 2002 15:21:45
z=c=pixel:
z=fn1(z)^2+c
|z| <=4
}

la-uhr6   { ; Guy Marson <guy.marson@mnhn.lu> -- Tue, 21 May 2002 21:22:59
            ; lake-transformation = Sylvie Gallet, Jan 16, 2000
       ; requires: FractInt >20.0.6, periodicity=0' and 'passes=1'
       ; compilation: guy.marson@mnhn.lu (12.05.2002)
       ; Try real(p1)=2, imag(p1)=0, real(p2)=1, imag(p2)=1, r(p3)=1, 
       ; real(p5)=1, imag(p5)=0, fn1=ident, fn2=ident for standard Mandelbrot. 
       ; A=real(p2), B=imag(p2), C=real(p3). If B=A*C then text is invisible, 
       ; else=visible! Try e.g. A=1, B=0.75, C=1 for visible text.. (or B=1.15)
       ; imag part of p3: 0 = lake transform disabled
       ;                  any value between 0 and 100: water level in % of
       ;                  the screen height (0 = bottom, 100 = top)
       ; real part of p4: amplitude of the wave (try 0.2)
       ; imag part of p4: frequency (try 300)
       ; real(p5) and imag(p5) are related to fn2.. 
       ; set the FractInt preView command (V) to: yes/1/1/yes/0/0
;
; Lake transformation:
; --------------------
if (real(p3) > 0 && real(p3) <= 100)
  level = imag(p3) / 100            ; water level
  ampl = real(p4)                ; amplitude of the wave
  freq = imag(p4)                ; frequency
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
 pixel = z + z3rd
endif
;
;text generated with "FracText.exe" from Jan Maarten van der Valk..
  x=real(scrnpix)/real(scrnmax), y=(imag(scrnmax)-imag(scrnpix))/real\
  (scrnmax), z=x+flip(y)
  x1=1.5*x
  chr11 = y<x1+0.24833&&y>x1+0.23481&&y>-x/1.5+1.26667||(x>0.48262&&x\
  <0.49012)
  x2=2.5*x
  chr22 = abs(cabs(z+(-0.507,-0.95562))-0.01062)<0.00375&&(y>0.95562|\
  |y>-x/1.20691+1.37571)||(y<1.20691*x+0.33295&&y>1.20691*x+0.32119&&\
  y<-x/1.20691+1.37571)||y<0.9275&&x>0.49262&&x<0.52138
  test1 = chr11||chr22&&y>0.92&&y<0.97
  chr13 = y<x1+0.50333&&y>x1+0.48981&&y>-x/1.5+1.06667||(x>0.27262&&x\
  <0.28012)
  chr14 = y<x1+0.4694&&y>x1+0.45588&&y>-x/1.5+1.08175||(x>0.29525&&x<\
  0.30275)
  test2 = chr13||chr14&&y>0.86&&y<0.91
  chr15 = y<x1-0.15667&&y>x1-0.17019&&y>-x/1.5+1.36||(x>0.71262&&x<0.\
  72012)
  test3 = chr15&&y>0.86&&y<0.91
  chr16 = y<x1+0.58833&&y>x1+0.57481&&y>-x/1.5+0.78333||(x>0.10262&&x\
  <0.11012)
  chr07 = abs(cabs(z+(-0.127,-0.72562))-0.01062)<0.00375&&y>0.72562||\
  (abs(cabs(z+(-0.127,-0.70438))-0.01062)<0.00375&&y<0.70438)||(((x>0\
  .11262&&x<0.12012)||(x>0.13387&&x<0.14137))&&y>0.70438&&y<0.72562)
  test4 = chr16||chr07&&y>0.69&&y<0.74
  chr28 = abs(cabs(z+(-0.87438,-0.72562))-0.01062)<0.00375&&(y>0.7256\
  2||y>-x/1.20691+1.4501)||(y<1.20691*x-0.34044&&y>1.20691*x-0.3522&&\
  y<-x/1.20691+1.4501)||y<0.6975&&x>0.86&&x<0.88875
  test5 = chr28&&y>0.69&&y<0.74
  chr99 = abs(cabs(z+(-0.05438,-0.49438))-0.01062)<0.00375&&y<0.49438\
  ||abs(cabs(z+(-0.05438,-0.51562))-0.01062)<0.00375||(x>0.06125&&x<0\
  .06875&&y>0.49438&&y<0.51562)
  test6 = chr99&&y>0.48&&y<0.53
  x3=0.7*x
  chr310 = abs(cabs(z+(-0.94178,-0.49438))-0.01062)<0.00375||abs(cabs\
  (z+(-0.94178,-0.51562))-0.01062)<0.00375&&(y>-x3+1.17487||y<x3-0.16\
  487||x>0.94178)
  test7 = chr310&&y>0.48&&y<0.53
  chr811 = abs(cabs(z+(-0.12438,-0.27438))-0.01062)<0.00375||abs(cabs\
  (z+(-0.12438,-0.29562))-0.01062)<0.00375
  test8 = chr811&&y>0.26&&y<0.31
  x4=1.8*x
  chr412 = y<x4-1.27133&&y>x4-1.28678&&y>0.27667||(x>0.8796&&x<0.8871\
  )||(y>0.26917&&y<0.27667&&x>0.86&&x<0.8921)
  test9 = chr412&&y>0.26&&y<0.31
  x7=2.75*x
  chr713 = y<x7-0.66368&&y>x7-0.68562||y>0.1325&&x>0.27&&x<0.2975
  test10 = chr713&&y>0.09&&y<0.14
  chr514 = abs(cabs(z+(-0.71625,-0.10625))-0.0125)<0.00375&&(y<0.1062\
  5||x>0.71625)||(x>0.7&&y>0.115&&x<0.7325&&(x<0.7075||y>0.1325||(y<0\
  .1225&&x<0.71625)))
  test11 = chr514&&y>0.09&&y<0.14
  chr615 = abs(cabs(z+(-0.49938,-0.07062))-0.01062)<0.00375&&y>0.0706\
  2||abs(cabs(z+(-0.49938,-0.04938))-0.01062)<0.00375||(x>0.485&&x<0.\
  4925&&y>0.04938&&y<0.07062)
  test12 = chr615&&y>0.035&&y<0.085
  test=test1||test2||test3||test4||test5||test6||test7||test8||test9|\
  |test10||test11||test12
  test0=test0&&whitesq
  test0=((test0||test)==0)
  f1=conj(real(p3))*conj(real(p2))*pixel
  f2=imag(p2)*pixel
  pixel=(test==0)*f1+test*f2
;
;formula...
  z=c=pixel:
  c=fn2(pixel*p5)
  z=fn2(fn1(z)^p1)+c
  |z| <=4
  }


swatch2   { ; Guy Marson <guy.marson@mnhn.lu>
            ; Sat, 25 May 2002 19:14:01
   z=ig
   ig=ig+(1+imag(p1))
   if(ig==256)
        ig=0
   endif
   :
   z=z-real(p1)
   z
}


neweco { ; Guy Marson <guy.marson@mnhn.lu>
         ; Sat, 03 Aug 2002 22:52:57
         ; using a standard Mandelbrot formula
         ; and the lake transform from Sylvie Gallet, Jan 16, 2000
         ; ---
         ; real(p1) = merging of text (function dependent)
         ; imag(p1) = idem
         ; real(p2) = idem
         ; imag(p2) = idem
         ; real(p3) = x-pos. of text-bailout
         ; imag(p3) = y-pos. of text-bailout
         ; ---
         ; If (B=A*C) then the text is invisible, else=visible!
         ; A = real(p4), B = imag(p4), C = real(p5)
         ; -----
         ; real(p4) = diam. of fractal
         ; imag(p4) = diam. of text-fractal
         ; real(p5) = diam. & direction on x-axis of fractal
         ; -----
         ; imag(p5) = Waterlevel (0-100 % of screen hight)
         ; -----
         ; 'periodicity=0' and 'passes=1' recommended
  pp_3=(0.3,200)
    if (imag(p5) > 0 && imag(p5) <= 100)
    level = imag(p5) / 100
    ampl = real(pp_3)
    freq = imag(pp_3)
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
    pixel = z + z3rd
    endif
    z=fn1(fn2(pixel))*fn3(fn4(pixel))-p2/p1
    x=real(z), y=imag(z)
  chro1 = abs(cabs(z+(0.35824,-0.32062))-0.01705)<0.00357
  chrf2 = abs(cabs(z+(0.30969,-0.33688))-0.0111)<0.00357&&y>0.33688||\
  (x>-0.32436&&x<-0.31721&&y<0.33688)||(x>-0.32991&&x<-0.30611&&y>0.3\
  2393&&y<0.33108)
  xt=1*x
  chrt4 = abs(cabs(z+(0.23958,-0.31468))-0.0111)<0.00357&&y<0.31468||\
  (x>-0.25426&&x<-0.24711&&y>0.31468)||(x>-0.25981&&x<-0.236&&y>0.334\
  1&&y<0.34125)
  chrh5 = x>-0.2172&&x<-0.21005||(abs(cabs(z+(0.20252,-0.32062))-0.01\
  11)<0.00357&&y>0.32062)||(x>-0.19499&&x<-0.18784&&y<0.32062)
  chre6 = abs(cabs(z+(0.15952,-0.32062))-0.01705)<0.00357&&(x<-0.1595\
  2||y>0.31943||y<0.31586)||(y>0.31943&&y<0.32658&&x>-0.17657&&x<-0.1\
  4247)
  xCN=2.5*x
  chrN8 = x>-0.10369&&x<-0.09654||(x>-0.08169&&x<-0.07399)||(y>-xCN+0\
  .09577&&y<-xCN+0.11502)
  chre9 = abs(cabs(z+(0.04567,-0.32062))-0.01705)<0.00357&&(x<-0.0456\
  7||y>0.31943||y<0.31586)||(y>0.31943&&y<0.32658&&x>-0.06272&&x<-0.0\
  2862)
  xw=4*x
  chrw10 = y<xw+0.32812&&y>xw+0.29864||(y>-xw+0.34521&&y<-xw+0.37469)\
  &&y<0.33667||(y>-xw+0.27188&&y<-xw+0.30136)||(y<xw+0.25479&&y>xw+0.\
  22531)&&y<0.34125
  chrE12 = x<0.07134||y<0.30715||(y<0.33108&&y>0.32393)||y>0.34785&&x\
  >0.06419&&x<0.09334
  xc=1*x
  chrc13 = abs(cabs(z+(-0.12166,-0.32062))-0.01705)<0.00357&&(x<0.121\
  66||y>xc+0.19896||y<-xc+0.44229)
  chro14 = abs(cabs(z+(-0.16457,-0.32062))-0.01705)<0.00357
  chrn15 = x>0.1929&&x<0.20005&&y<0.34125||(abs(cabs(z+(-0.20757,-0.3\
  2657))-0.0111)<0.00357&&y>0.32657)||(x>0.2151&&x<0.22225&&y<0.32657\
  )
  chro16 = abs(cabs(z+(-0.25058,-0.32062))-0.01705)<0.00357
  chrm17 = x>0.2789&&x<0.28605&&y<0.34125||(abs(cabs(z+(-0.29358,-0.3\
  2657))-0.0111)<0.00357&&y>0.32657)||(x>0.30111&&x<0.30826&&y<0.3265\
  7)||(abs(cabs(z+(-0.31579,-0.32657))-0.0111)<0.00357&&y>0.32657)||(\
  x>0.32331&&x<0.33046&&y<0.32657)
  xy=2.5*x
  chry18 = y<xy-0.58666&&y>xy-0.60591||(y>-xy+1.18666&&y<-xy+1.20591)\
  &&y>xy-0.60591&&y<0.34125&&y>0.2725
  test1 = chro1||chrf2||chrt4||chrh5||chre6||chrN8||chre9||chrw10||ch\
  rE12||chrc13||chro14||chrn15||chro16||chrm17&&y>0.3||chry18&&y<0.35\
  5
  chrt19 = abs(cabs(z+(0.22315,-0.4819))-0.0092)<0.0027&&y<0.4819||(x\
  >-0.23505&&x<-0.22965&&y>0.4819)||(x>-0.23965&&x<-0.22045&&y>0.4983\
  5&&y<0.50375)
  chrh20 = x>-0.2045&&x<-0.1991||(abs(cabs(z+(0.19261,-0.48688))-0.00\
  92)<0.0027&&y>0.48688)||(x>-0.18611&&x<-0.18071&&y<0.48688)
  chre21 = abs(cabs(z+(0.15709,-0.48688))-0.01418)<0.0027&&(x<-0.1570\
  9||y>0.48598||y<0.48328)||(y>0.48598&&y<0.49138&&x>-0.17126&&x<-0.1\
  4291)
  chrc23 = abs(cabs(z+(0.09409,-0.48688))-0.01418)<0.0027&&(x<-0.0940\
  9||y>xc+0.58096||y<-xc+0.39279)
  chrh24 = x>-0.0754&&x<-0.07||(abs(cabs(z+(0.06351,-0.48688))-0.0092\
  )<0.0027&&y>0.48688)||(x>-0.05701&&x<-0.05161&&y<0.48688)
  chra25 = abs(cabs(z+(0.03507,-0.49396))-0.00709)<0.0027&&x<-0.03507\
  ||(abs(cabs(z+(0.03057,-0.49396))-0.00709)<0.0027&&x>-0.03057)&&y>0\
  .49396||((abs(cabs(z+(0.03507,-0.47979))-0.00709)<0.0027&&x<-0.0350\
  7)||(abs(cabs(z+(0.03057,-0.47979))-0.00709)<0.0027&&x>-0.03057))||\
  (x>-0.03507&&x<-0.03057&&(y<0.4754||(y>0.49835&&y<0.50375)||(y>0.48\
  418&&y<0.48958)))||(x>-0.02618&&x<-0.02078&&y<0.49396)
  chro26 = abs(cabs(z+(-0.00284,-0.48688))-0.01418)<0.0027
  chrt27 = abs(cabs(z+(-0.04296,-0.4819))-0.0092)<0.0027&&y<0.4819||(\
  x>0.03106&&x<0.03646&&y>0.4819)||(x>0.02647&&x<0.04566&&y>0.49835&&\
  y<0.50375)
  chri28 = x>0.06161&&x<0.06701&&(y<0.5042||y>0.5096)
  chrc29 = abs(cabs(z+(-0.09063,-0.48688))-0.01418)<0.0027&&(x<0.0906\
  3||y>xc+0.39624||y<-xc+0.57751)
  chrw31 = y<xw-0.09101&&y>xw-0.11327||(y>-xw+1.09101&&y<-xw+1.11327)\
  &&y<0.5||(y>-xw+1.03101&&y<-xw+1.05327)||(y<xw-0.15101&&y>xw-0.1732\
  7)&&y<0.50375
  chra32 = abs(cabs(z+(-0.18579,-0.49396))-0.00709)<0.0027&&x<0.18579\
  ||(abs(cabs(z+(-0.19029,-0.49396))-0.00709)<0.0027&&x>0.19029)&&y>0\
  .49396||((abs(cabs(z+(-0.18579,-0.47979))-0.00709)<0.0027&&x<0.1857\
  9)||(abs(cabs(z+(-0.19029,-0.47979))-0.00709)<0.0027&&x>0.19029))||\
  (x>0.18579&&x<0.19029&&(y<0.4754||(y>0.49835&&y<0.50375)||(y>0.4841\
  8&&y<0.48958)))||(x>0.19468&&x<0.20008&&y<0.49396)
  chry33 = y<xy-0.08083&&y>xy-0.09537||(y>-xy+1.02083&&y<-xy+1.03537)\
  &&y>xy-0.09537&&y<0.50375&&y>0.4475
  test2 = chrt19||chrh20||chre21||chrc23||chrh24||chra25||chro26||chr\
  t27||chri28||chrc29||chrw31||chra32&&y>0.47||chry33&&y<0.515
  test=test1||test2
  test0=test0&&whitesq
  test0=((test0||test)==0)
  f1=(1/conj(real(p5)))*(1/conj(real(p4)))*pixel
  f2=(1/imag(p4))*pixel
  pixel=(test==0)*f1+test*f2
  x=pixel+p3
  pixel=(x+y)
  z=c=pixel:
  z=z*z+c
  |z| <=4
  }


new2003 { ; Guy Marson <guy.marson@mnhn.lu>
          ; Wed, 25 Dec 2002 00:40:11
          ; using a standard Mandelbrot formula
          ; and the lake transform from Sylvie Gallet, Jan 16, 2000
          ; ---
          ; real(p1) = merging of text (function dependent)
          ; imag(p1) = idem
          ; real(p2) = idem
          ; imag(p2) = idem
          ; real(p3) = x-pos. of text-bailout
          ; imag(p3) = y-pos. of text-bailout
          ; ---
          ; If (B=A*C) then the text is invisible, else=visible!
          ; A = real(p4), B = imag(p4), C = real(p5)
          ; -----
          ; real(p4) = diam. of fractal
          ; imag(p4) = diam. of text-fractal
          ; real(p5) = diam. & direction on x-axis of fractal
          ; -----
          ; imag(p5) = Waterlevel (0-100 % of screen hight)
          ; -----
          ; 'periodicity=0' and 'passes=1' recommended
  pp_3=(0.3,200)
    if (imag(p5) > 0 && imag(p5) <= 100)
    level = imag(p5) / 100
    ampl = real(pp_3)
    freq = imag(pp_3)
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
    pixel = z + z3rd
    endif
    z=fn1(fn2(pixel))*fn3(fn4(pixel))-p2/p1
    x=real(z), y=imag(z)
  chrH1 = x<-0.37433||x>-0.35783||(y<0.33108&&y>0.32393)&&x>-0.38148&\
  &x<-0.35068
  xCA=3*x
  chrA2 = y>xCA+1.30632||y>-xCA-0.61893||(y<0.322&&y>0.31485)&&y<xCA+\
  1.32893&&y<-xCA-0.59632
  chrP3 = y<0.33108&&y>0.32393||y>0.34785||x<-0.28392&&x>-0.29107&&x<\
  -0.27292||(abs(cabs(z+(0.27292,-0.33946))-0.01196)<0.00357&&x>=-0.2\
  7292)
  chrP4 = y<0.33108&&y>0.32393||y>0.34785||x<-0.24254&&x>-0.24969&&x<\
  -0.23154||(abs(cabs(z+(0.23154,-0.33946))-0.01196)<0.00357&&x>=-0.2\
  3154)
  xCY=2*x
  chrY5 = y<xCY+0.7056&&y>xCY+0.68961||(y>-xCY-0.0616&&y<-xCY-0.04561\
  )&&y>xCY+0.68961
  xCN=2.5*x
  chrN7 = x>-0.1321&&x<-0.12495||(x>-0.1101&&x<-0.1024)||(y>-xCN+0.02\
  474&&y<-xCN+0.04399)
  chrE8 = x<-0.08755||y<0.30715||(y<0.33108&&y>0.32393)||y>0.34785&&x\
  >-0.0947&&x<-0.06555
  xCW=4*x
  chrW9 = y<xCW+0.47641&&y>xCW+0.44693||(y>-xCW+0.19692&&y<-xCW+0.226\
  4)&&y<0.33667||(y>-xCW+0.12359&&y<-xCW+0.15307)||(y<xCW+0.40308&&y>\
  xCW+0.3736)
  chrY11 = y<xCY+0.2279&&y>xCY+0.21191||(y>-xCY+0.4161&&y<-xCY+0.4320\
  9)&&y>xCY+0.21191
  chrE12 = x<0.08639||y<0.30715||(y<0.33108&&y>0.32393)||y>0.34785&&x\
  >0.07924&&x<0.10839
  chrA13 = y>xCA-0.07089||y>-xCA+0.75828||(y<0.322&&y>0.31485)&&y<xCA\
  -0.04828&&y<-xCA+0.78089
  xCR=2*x
  chrR14 = y<0.33108&&y>0.32393||y>0.34785||x<0.17515&&x>0.168&&x<0.1\
  8615||(abs(cabs(z+(-0.18615,-0.33946))-0.01196)<0.00357&&x>=0.18615\
  )||(y<0.3275&&y<-xCR+0.70337&&y>-xCR+0.68738)
  x2=2.5*x
  chr216 = abs(cabs(z+(-0.25242,-0.33946))-0.01196)<0.00357&&(y>0.339\
  46||y>-x/1.22571+0.5454)||(y<1.22571*x+0.0168&&y>1.22571*x+0.00549&\
  &y<-x/1.22571+0.5454)||y<0.30715&&x>0.23688&&x<0.26796
  chr017 = abs(cabs(z+(-0.2912,-0.33946))-0.01196)<0.00357&&y>0.33946\
  ||(abs(cabs(z+(-0.2912,-0.31554))-0.01196)<0.00357&&y<0.31554)||(((\
  x>0.27566&&x<0.28281)||(x>0.29958&&x<0.30673))&&y>0.31554&&y<0.3394\
  6)
  chr018 = abs(cabs(z+(-0.32997,-0.33946))-0.01196)<0.00357&&y>0.3394\
  6||(abs(cabs(z+(-0.32997,-0.31554))-0.01196)<0.00357&&y<0.31554)||(\
  ((x>0.31443&&x<0.32158)||(x>0.33836&&x<0.34551))&&y>0.31554&&y<0.33\
  946)
  x3=0.7*x
  chr319 = abs(cabs(z+(-0.36594,-0.31554))-0.01196)<0.00357||abs(cabs\
  (z+(-0.36594,-0.33946))-0.01196)<0.00357&&(y>-x3+0.59562||y<x3+0.05\
  938||x>0.36594)
  test1 = chrH1||chrA2||chrP3||chrP4||chrY5||chrN7||chrE8||chrW9||chr\
  Y11||chrE12||chrA13||chrR14||chr216||chr017||chr018||chr319&&y>0.3&\
  &y<0.355
  xCM=2.5*x
  chrM20 = y>-xCM+0.0545&&y<-xCM+0.06904||(y<xCM+0.9155&&y>xCM+0.9009\
  6)&&y>0.485||(x>-0.1842&&x<-0.1788)||(x>-0.15978&&x<-0.15438)
  chrE21 = x<-0.14223||y<0.4754||(y<0.4952&&y>0.4898)||y>0.5096&&x>-0\
  .14763&&x<-0.12423
  chrR22 = y<0.4952&&y>0.4898||y>0.5096||x<-0.11208&&x>-0.11748&&x<-0\
  .10308||(abs(cabs(z+(0.10308,-0.5024))-0.0099)<0.0027&&x>=-0.10308)\
  ||(y<0.4925&&y<-xCR+0.28903&&y>-xCR+0.27696)
  chrR23 = y<0.4952&&y>0.4898||y>0.5096||x<-0.07833&&x>-0.08373&&x<-0\
  .06933||(abs(cabs(z+(0.06933,-0.5024))-0.0099)<0.0027&&x>=-0.06933)\
  ||(y<0.4925&&y<-xCR+0.35653&&y>-xCR+0.34446)
  chrY24 = y<xCY+0.56097&&y>xCY+0.54889||(y>-xCY+0.41503&&y<-xCY+0.42\
  711)&&y>xCY+0.54889
  xCX=2*x
  chrX26 = y<xCX+0.44539&&y>xCX+0.43332||(y>-xCX+0.53961&&y<-xCX+0.55\
  168)
  chrDS27 = y<0.4907&&y>0.4853&&x>0.04759&&x<0.07324
  chrM28 = y>-xCM+0.71498&&y<-xCM+0.72952||(y<xCM+0.25502&&y>xCM+0.24\
  048)&&y>0.485||(x>0.07999&&x<0.08539)||(x>0.10441&&x<0.10981)
  chrA29 = y>xCA+0.10325||y>-xCA+0.90967||(y<0.488&&y>0.4826)&&y<xCA+\
  0.12033&&y<-xCA+0.92675
  chrS30 = abs(cabs(z+(-0.1716,-0.5024))-0.0099)<0.0027&&(x<=0.1716||\
  y>0.5024)||(abs(cabs(z+(-0.1716,-0.4826))-0.0099)<0.0027&&(x>0.1716\
  ||y<0.4826))
  test2 = chrM20||chrE21||chrR22||chrR23||chrY24||chrX26||chrDS27||ch\
  rM28||chrA29||chrS30&&y>0.47&&y<0.515
  chrf31 = abs(cabs(z+(0.1771,0.09654))-0.00409)<0.0012&&y>-0.09654||\
  (x>-0.18238&&x<-0.17998&&y<-0.09654)||(x>-0.18443&&x<-0.1759&&y>-0.\
  1012&&y<-0.0988)
  chrr32 = x>-0.16901&&x<-0.16661&&y<-0.095||(abs(cabs(z+(0.16372,0.1\
  0029))-0.00409)<0.0012&&y>-0.10029)
  chro33 = abs(cabs(z+(0.14813,0.1025))-0.0063)<0.0012
  chrm34 = x>-0.13783&&x<-0.13543&&y<-0.095||(abs(cabs(z+(0.13255,0.1\
  0029))-0.00409)<0.0012&&y>-0.10029)||(x>-0.12966&&x<-0.12726&&y<-0.\
  10029)||(abs(cabs(z+(0.12437,0.10029))-0.00409)<0.0012&&y>-0.10029)\
  ||(x>-0.12148&&x<-0.11908&&y<-0.10029)
  chrF36 = x<-0.10388||(y<-0.0988&&y>-0.1012)||y>-0.0924&&x>-0.10628&\
  &x<-0.09588
  chru37 = x>-0.09308&&x<-0.09068&&y>-0.10471&&y<-0.095||(abs(cabs(z+\
  (0.0878,0.10471))-0.00409)<0.0012&&y<-0.10471)||(x>-0.08491&&x<-0.0\
  8251&&y<-0.095)
  chrn38 = x>-0.07971&&x<-0.07731&&y<-0.095||(abs(cabs(z+(0.07442,0.1\
  0029))-0.00409)<0.0012&&y>-0.10029)||(x>-0.07153&&x<-0.06913&&y<-0.\
  10029)
  chrG39 = abs(cabs(z+(0.05633,0.1))-0.0088)<0.0012&&(x<-0.05633||y<-\
  0.0988||y>-0.0976)||(x>-0.05633&&x<=-0.04873&&y<-0.0988&&y>-0.1012)
  chru40 = x>-0.04353&&x<-0.04113&&y>-0.10471&&y<-0.095||(abs(cabs(z+\
  (0.03825,0.10471))-0.00409)<0.0012&&y<-0.10471)||(x>-0.03536&&x<-0.\
  03296&&y<-0.095)
  xy=2.5*x
  chry41 = y<xy-0.0496&&y>xy-0.05607||(y>-xy-0.1704&&y<-xy-0.16393)&&\
  y>xy-0.05607&&y<-0.095&&y>-0.12
  test3 = chrf31||chrr32||chro33||chrm34||chrF36||chru37||chrn38||chr\
  G39||chru40&&y>-0.11||chry41&&y<-0.09
  test=test1||test2||test3
  test0=test0&&whitesq
  test0=((test0||test)==0)
  f1=(1/conj(real(p5)))*(1/conj(real(p4)))*pixel
  f2=(1/imag(p4))*pixel
  pixel=(test==0)*f1+test*f2
  x=pixel+p3
  pixel=(x+y)
  z=c=pixel:
  z=z*z+c
  |z| <=4
  }


ny2004-4 { ; Guy Marson <guy.marson@mnhn.lu>
           ; Sat, 03 Jan 2004 21:17:56
           ; fn1-fn4 ident = Mandelbrot 
           ; with lake transformation from Sylvie Gallet, Jan 16, 2000
           ; ---
           ; real(p1) = merging of text (function dependent)
           ; imag(p1) = idem
           ; real(p2) = diam. of backgr.fractal
           ; imag(p2) = 0-6.28 = rotation of backgr.fractal
           ; real(p3) = x-pos. of backgr.fractal
           ; imag(p3) = y-pos. of backgr.fractal
           ; ---
           ; If (B=A*C) then text is invisible, else=visible!
           ; A = real(p4), B = imag(p4), C = real(p5)
           ; -----
           ; real(p4) = diam. of fractal
           ; imag(p4) = diam. of text-fractal
           ; real(p5) = diam. & direction on x-axis of fractal
           ; -----
           ; imag(p5) = Waterlevel (0-100 % of screen hight)
           ; -----
           ; 'periodicity=0' and 'passes=1' recommended
  pp_3=(0.3,200)
    if (imag(p5) > 0 && imag(p5) <= 100)
    level = imag(p5) / 100
    ampl = real(pp_3)
    freq = imag(pp_3)
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
    pixel = z + z3rd
    endif
    z=fn1(fn2(pixel))*p1
    x=real(z), y=imag(z)
  chrH1 = x<-0.16646||x>-0.13646||(y<0.656&&y>0.644)&&x>-0.17846&&x<-\
  0.12446
  chra2 = abs(cabs(z+(0.09271,-0.65325))-0.01575)<0.006&&x<-0.09271||\
  (abs(cabs(z+(0.08271,-0.65325))-0.01575)<0.006&&x>-0.08271)&&y>0.65\
  325||((abs(cabs(z+(0.09271,-0.62175))-0.01575)<0.006&&x<-0.09271)||\
  (abs(cabs(z+(0.08271,-0.62175))-0.01575)<0.006&&x>-0.08271))||(x>-0\
  .09271&&x<-0.08271&&(y<0.612||(y>0.663&&y<0.675)||(y>0.6315&&y<0.64\
  35)))||(x>-0.07296&&x<-0.06096&&y<0.65325)
  chrp3 = x>-0.05096&&x<-0.03896&&y<0.675&&y>0.5625||(abs(cabs(z+(0.0\
  2021,-0.6375))-0.0315)<0.006&&x>-0.03896)
  chrp4 = x>0.02729&&x<0.03929&&y<0.675&&y>0.5625||(abs(cabs(z+(-0.05\
  804,-0.6375))-0.0315)<0.006&&x>0.03929)
  xy=2.5*x
  chry5 = y<xy+0.26116&&y>xy+0.22884||(y>-xy+0.93884&&y<-xy+0.97116)&\
  &y>xy+0.22884&&y<0.675&&y>0.55
  test1 = chrH1||chra2&&y>0.6||chrp3||chrp4||chry5&&y<0.7
  xCN=2.5*x
  chrN6 = x>-0.29573&&x<-0.28573||(x>-0.25573&&x<-0.24496)||(y>-xCN-0\
  .18933&&y<-xCN-0.16241)
  chre7 = abs(cabs(z+(0.19346,-0.4875))-0.0325)<0.005&&(x<-0.19346||y\
  >0.48583||y<0.48083)||(y>0.48583&&y<0.49583&&x>-0.22596&&x<-0.16096\
  )
  xw=4*x
  chrw8 = y<xw+0.94285&&y>xw+0.90162||(y>-xw+0.09048&&y<-xw+0.13171)&\
  &y<0.51667||(y>-xw-0.04285&&y<-xw-0.00162)||(y<xw+0.80952&&y>xw+0.7\
  6829)&&y<0.525
  xCY=2*x
  chrY10 = y<xCY+0.42364&&y>xCY+0.40128||(y>-xCY+0.55636&&y<-xCY+0.57\
  872)&&y>xCY+0.40128
  chre11 = abs(cabs(z+(-0.12586,-0.4875))-0.0325)<0.005&&(x<0.12586||\
  y>0.48583||y<0.48083)||(y>0.48583&&y<0.49583&&x>0.09336&&x<0.15836)
  chra12 = abs(cabs(z+(-0.19861,-0.50375))-0.01625)<0.005&&x<0.19861|\
  |(abs(cabs(z+(-0.20861,-0.50375))-0.01625)<0.005&&x>0.20861)&&y>0.5\
  0375||((abs(cabs(z+(-0.19861,-0.47125))-0.01625)<0.005&&x<0.19861)|\
  |(abs(cabs(z+(-0.20861,-0.47125))-0.01625)<0.005&&x>0.20861))||(x>0\
  .19861&&x<0.20861&&(y<0.46||(y>0.515&&y<0.525)||(y>0.4825&&y<0.4925\
  )))||(x>0.21986&&x<0.22986&&y<0.50375)
  chrr13 = x>0.24386&&x<0.25386&&y<0.525||(abs(cabs(z+(-0.2698,-0.499\
  06))-0.02094)<0.005&&y>0.49906)
  test2 = chrN6||chre7||chrw8||chrY10||chre11||chra12||chrr13&&y>0.45\
  &&y<0.55
  x2=2.5*x
  chr214 = abs(cabs(z+(0.09317,-0.36435))-0.01935)<0.0063&&(y>0.36435\
  ||y>-x/1.21639+0.28775)||(y<1.21639*x+0.45714&&y>1.21639*x+0.4373&&\
  y<-x/1.21639+0.28775)||y<0.3126&&x>-0.11882&&x<-0.06752
  chr015 = abs(cabs(z+(0.03287,-0.36435))-0.01935)<0.0063&&y>0.36435|\
  |(abs(cabs(z+(0.03287,-0.32565))-0.01935)<0.0063&&y<0.32565)||(((x>\
  -0.05852&&x<-0.04592)||(x>-0.01982&&x<-0.00722))&&y>0.32565&&y<0.36\
  435)
  chr016 = abs(cabs(z+(-0.02743,-0.36435))-0.01935)<0.0063&&y>0.36435\
  ||(abs(cabs(z+(-0.02743,-0.32565))-0.01935)<0.0063&&y<0.32565)||(((\
  x>0.00178&&x<0.01438)||(x>0.04048&&x<0.05308))&&y>0.32565&&y<0.3643\
  5)
  x4=1.8*x
  chr417 = y<x4+0.21826&&y>x4+0.19232&&y>0.33||(x>0.09722&&x<0.10982)\
  ||(y>0.3174&&y<0.33&&x>0.06208&&x<0.11882)
  test3 = chr214||chr015||chr016||chr417&&y>0.3&&y<0.39
  test=test1||test2||test3
  test0=test0&&whitesq
  test0=((test0||test)==0)
  f1=(1/conj(real(p5)))*(1/conj(real(p4)))*pixel
  f2=(1/imag(p4))*pixel
  pixel=(test==0)*f1+test*f2
  z=c=fn1(fn2(pixel-p3)*(exp(p2)))
  :
  z=sqr(fn3(fn4(z)))+c
  |z| <=4
  }

p1-p3    { ; Guy Marson <guy.marson@mnhn.lu>
           ; Mon, 08 Dec 2003 01:07:24 
z=c=(((pixel-p3)/p1)^p2):
z=z*z+c
|z| <=4
}

Bjax-b   { ; Guy Marson <guy.marson@mnhn.lu>
           ; Mon, 19 Jan 2004 15:18:51 
           ; Bailout = imag(p2)
  z=c=2/pixel:
   z =(1/((z^(real(p1)))*(c^(real(p2))))*c) + c
|z| <=imag(p2)
}


epsi-9   { ; Guy Marson <guy.marson@mnhn.lu>
           ; Tue, 11 Apr 2006 19:28:06 
           ; epsiloncross test rotated 45 degrees (generalized by Guy Marson)
    z=c=pixel:
    z=z*z+c
    r=fn1(fn2(real(z))), i=fn3(fn4(imag(z)))
    if ((((r-i)>-(real(p1))) && ((r-i)<(real(p1)))) || (((r+i)>-(real(p1))) && ((r+i)<(real(p1)))))
      z=imag(p1)            ;forces escape
    endif
    |z| < 4
  }

