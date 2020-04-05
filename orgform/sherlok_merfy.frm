
Frenzy     { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 15 Jan 2004 18:26:55
             ; Where went the neg function?
             ;
  z = pixel, s=-fn1(fn2(pixel)):
  z = z * s + z
  s = s/z + pixel
  |z| <= 8
}


PixelPower   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
               ; Fri, 13 Feb 2004 06:07:18
               ; (formula) Imajinaries yield asymmetry.
               ;
  chaw=P1, z=fn1(pixel), s=P2-fn2(pixel),
  if(P3==(0,0))
      P3=sqrt(0,2)
  endif:
  z = z^s +chaw,
  |z| <= |P3|
}


PixelPower-2   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                 ; Mon, 29 Mar 2004 08:41:42
                 ; Formula for club.   Public domain.
                 ;
  z=fn1(pixel), s=P2+fn2(pixel),
  if(P3==(0,0))
        P3=sqrt(0,2)
  endif:
  z = z^s +P1,
  |z| <= real(P3)
}


PixelPowerAdd  { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                 ; Sun, 15 Feb 2004 04:04:22
                 ; Now you know why I want neg function back.
                 ;
  chaw=P1, z=fn1(pixel), s=P2+fn2(pixel),
  if(P3==(0,0))
      P3=sqrt(0,2)
  endif:
  z = z^s +chaw,
  |z| <= |P3|
}


Karts          { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                 ; Sun, 15 Feb 2004 04:04:22
                 ; 
  z = fn1(pixel), chaw=fn2(pixel), ex=P1, iter=0, t=P2
  if(t==(0,0))
      t=|sqrt(0,2)|
  endif:
  imod=(iter/ 16 -trunc(iter/ 16 ))* 16 ,
  ; imod=remainder(num_notes/iter)
  iter=iter+1,
  if(imod== 0 )
      see=( 2.04347825050354000, 3 )
  elseif(imod== 1 )
      see=( 1.00000000000000000, 2 )
  elseif(imod== 2 )
      see=( 1.60869562625885000, 11 )
  elseif(imod== 3 )
      see=( 1.26086962223053000, 7 )
  elseif(imod== 4 )
      see=( 1.34782612323761000, 3 )
  elseif(imod== 5 )
      see=( 1.26086962223053000, 2 )
  elseif(imod== 6 )
      see=( 1.34782612323761000, 11 )
  elseif(imod== 7 )
      see=( 1.00000000000000000, 7 )
  elseif(imod== 8 )
      see=( 1.34782612323761000, 3 )
  elseif(imod== 9 )
      see=( 1.26086962223053000, 2 )
  elseif(imod== 10 )
      see=( 1.78260874748230000, 11 )
  elseif(imod== 11 )
      see=( 2.04347825050354000, 7 )
  elseif(imod== 12 )
      see=( 1.86956524848938000, 3 )
  elseif(imod== 13 )
      see=( 2.04347825050354000, 2 )
  elseif(imod== 14 )
      see=( 1.00000000000000000, 11 )
  elseif(imod== 15 )
      see=( 1.34782612323761000, 7 )
  endif,
  z=z^ex +chaw
  chaw=chaw/see +z
  |z| <= t
}


Club_Lambda    { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                 ; Wed, 25 Feb 2004 15:46:17
                 ; 
  z=fn1(pixel), c=fn2(pixel), t=|P1|:
  z = z*(1-z) -conj(z) +c
  ;c = c/2 +z,
  |z| <= t
}


Butterfly(YAXIS)  { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                    ; Wed, 10 Mar 2004 19:30:38
                    ; 
  z=(0,0), c=flip(-pixel):
  temp = sqr(z)
  z = temp*z -conj(temp) +c
  LastSqr <= 4
}


Heartx     { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 11 Mar 2004 00:20:32
             ; Formula.  The core of hearty.
             ;
  s=z=atanh(real(-1/pixel) +flip(imag(-.5/pixel))), iter=0, t=|P1|,:
  z=s*(z-(0,1))*((0,1)-z)
  |z| <= t
}


Heartx-2   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Mon, 29 Mar 2004 08:41:42
             ; Stript version of hearty. params=1/0/4/0/ident
             ; Public domain.
             ;
  s=z=fn1(real(-1/pixel) +flip(imag(-.5/pixel))):
  z=s*(z-P2)*(P2-z)
  |z| <= real(P1)
}


Hearty     { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 11 Mar 2004 00:20:32
             ; Formula. Needs arrays for speed. Cropped as above,
             ; about 30min. on 350MhzPII @ 1280x1024,
             ; more for atan and fmod.
             ;
  s=z=atanh(real(-1/pixel) +flip(imag(-.5/pixel))), iter=0,
  t=|P1|, mean= 24.15789473684211:
  imod=(iter/ 127 -trunc(iter/ 127 ))* 127 ,
 ; imod=remainder(num_notes/iter)
  iter=iter+1,
  if(imod>-1 && imod< 8 )
        note= 11 
  elseif(imod> 6 && imod< 19 )
        note= 13 
  elseif(imod> 17 && imod< 22 )
        note= 17 
  elseif(imod> 20 && imod< 27 )
        note= 19 
  elseif(imod> 25 && imod< 34 )
        note= 16 
  elseif(imod> 32 && imod< 41 )
        note= 23 
  elseif(imod> 39 && imod< 52 )
        note= 31 
  elseif(imod> 50 && imod< 55 )
        note= 29 
  elseif(imod> 53 && imod< 60 )
        note= 23 
  elseif(imod> 58 && imod< 67 )
        note= 31 
  elseif(imod> 65 && imod< 74 )
        note= 11 
  elseif(imod> 72 && imod< 85 )
        note= 9 
  elseif(imod> 83 && imod< 88 )
        note= 13 
  elseif(imod> 86 && imod< 93 )
        note= 17 
  elseif(imod> 91 && imod< 100 )
        note= 13 
  elseif(imod> 98 && imod< 107 )
        note= 29 
  elseif(imod> 105 && imod< 118 )
        note= 51 
  elseif(imod> 116 && imod< 121 )
        note= 59 
  elseif(imod> 119 && imod< 128 )
        note= 44 
  endif,
  z=s*(z-flip(note/mean))*(flip(note/mean)-z)
  |z| <= t
}


Hearty-2   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Mon, 29 Mar 2004 08:41:42
             ; Might be worth compiling as overlay.
             ;
  s=z=fn1(real(-1/pixel) +flip(imag(-.5/pixel))), iter=-1:
  iter=iter+1,
  if(iter>-1 && iter< 7 )
        note= 11 
  elseif(iter> 6 && iter< 18 )
        note= 13 
  elseif(iter> 17 && iter< 21 )
        note= 17 
  elseif(iter> 20 && iter< 26 )
        note= 19 
  elseif(iter> 25 && iter< 33 )
        note= 16 
  elseif(iter> 32 && iter< 40 )
        note= 23 
  elseif(iter> 39 && iter< 51 )
        note= 31 
  elseif(iter> 50 && iter< 54 )
        note= 29 
  elseif(iter> 53 && iter< 59 )
        note= 23 
  elseif(iter> 58 && iter< 66 )
        note= 31 
  elseif(iter> 65 && iter< 73 )
        note= 11 
  elseif(iter> 72 && iter< 84 )
        note= 10 
  elseif(iter> 83 && iter< 87 )
        note= 13 
  elseif(iter> 86 && iter< 92 )
        note= 17 
  elseif(iter> 91 && iter< 99 )
        note= 13 
  elseif(iter> 98 && iter< 106 )
        note= 29 
  elseif(iter> 105 && iter< 117 )
        note= 51 
  elseif(iter> 116 && iter< 120 )
        note= 59 
  elseif(iter> 119 && iter< 127 )
        note= 44 
  elseif(iter>= 127 )
        iter = -1
  endif,
  note=flip(note* 19 / 460 )
  z=s*(z-note)*(note-z)
  |z| <= real(P1)
}


Rock(XYAXIS)   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                 ; Mon, 15 Mar 2004 01:42:13
                 ; 
  z=z-z, c=fn1(pixel), iter=-1:
  iter=iter+1,
  if(iter>-1 && iter< 7 )
        note= 11 
  elseif(iter> 6 && iter< 18 )
        note= 13 
  elseif(iter> 17 && iter< 21 )
        note= 17 
  elseif(iter> 20 && iter< 26 )
        note= 19 
  elseif(iter> 25 && iter< 33 )
        note= 16 
  elseif(iter> 32 && iter< 40 )
        note= 23 
  elseif(iter> 39 && iter< 51 )
        note= 31 
  elseif(iter> 50 && iter< 54 )
        note= 29 
  elseif(iter> 53 && iter< 59 )
        note= 23 
  elseif(iter> 58 && iter< 66 )
        note= 31 
  elseif(iter> 65 && iter< 73 )
        note= 11 
  elseif(iter> 72 && iter< 84 )
        note= 9 
  elseif(iter> 83 && iter< 87 )
        note= 13 
  elseif(iter> 86 && iter< 92 )
        note= 17 
  elseif(iter> 91 && iter< 99 )
        note= 13 
  elseif(iter> 98 && iter< 106 )
        note= 29 
  elseif(iter> 105 && iter< 117 )
        note= 51 
  elseif(iter> 116 && iter< 120 )
        note= 59 
  elseif(iter> 119 && iter< 127 )
        note= 44 
  endif
  if(iter>= 127 )
        iter=-1
  endif
  temp=note* 19 / 459 
  z=(z+temp)*(z-temp)*(z+flip(temp))*(z-flip(temp))/c
  |z| <= real(P1)
}


Rock       { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Mon, 29 Mar 2004 08:41:42
             ; Formula for Diamond.
             ;
  z=z-z, c=fn1(pixel), iter=-1:
  iter=iter+1,
  if(iter>-1 && iter< 14 )
        note= 11 
  elseif(iter> 13 && iter< 36 )
        note= 13 
  elseif(iter> 35 && iter< 42 )
        note= 17 
  elseif(iter> 41 && iter< 52 )
        note= 19 
  elseif(iter> 51 && iter< 66 )
        note= 16 
  elseif(iter> 65 && iter< 80 )
        note= 23 
  elseif(iter> 79 && iter< 102 )
        note= 31 
  elseif(iter> 101 && iter< 108 )
        note= 29 
  elseif(iter> 107 && iter< 118 )
        note= 23 
  elseif(iter> 117 && iter< 132 )
        note= 31 
  elseif(iter> 131 && iter< 146 )
        note= 11 
  elseif(iter> 145 && iter< 168 )
        note= 10 
  elseif(iter> 167 && iter< 174 )
        note= 13 
  elseif(iter> 173 && iter< 184 )
        note= 17 
  elseif(iter> 183 && iter< 198 )
        note= 13 
  elseif(iter> 197 && iter< 212 )
        note= 29 
  elseif(iter> 211 && iter< 234 )
        note= 51 
  elseif(iter> 233 && iter< 240 )
        note= 59 
  elseif(iter> 239 && iter< 254 )
        note= 44 
  elseif(iter>= 254 )
        iter=-1
  endif,
  note=note* 19 / 460 
  z=(z+note)*(z-note)*(z+flip(note))*(z-flip(note))/c
  |z| <= real(P1)
}


Club_Lambda    { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                 ; Tue, 16 Mar 2004 07:12:24
                 ; Try inversion. Simplified since last post of it.
                 ;
  z=fn1(pixel), c=fn2(pixel):
  z = z*z -conj(z) +c
  |z| <= real(P1)
}


Square       { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
               ; Mon, 29 Mar 2004 08:41:42
               ; Stripped formula for diamond. params=1/0/2/0/ident
               ; Display=function first. Public domain.
               ;
  z=z-z, c=fn1(pixel), delta=P1:
  z=(z+delta)*(z-delta)*(z+flip(delta))*(z-flip(delta))/c
  |z| <= real(P2)
}


Tool        { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
              ; Mon, 29 Mar 2004 08:41:42
              ; 
  z = z-z, iter=-1, c=fn2(fn1(pixel)):
  iter=iter+1,
  if(iter>-1  && iter< 3 )
        note= 47 
  elseif(iter> 2  && iter< 5 )
        note= 23 
  elseif(iter> 4  && iter< 16 )
        note= 37 
  elseif(iter> 15  && iter< 21 )
        note= 29 
  elseif(iter> 20  && iter< 24 )
        note= 31 
  elseif(iter> 23  && iter< 26 )
        note= 29 
  elseif(iter> 25  && iter< 37 )
        note= 31 
  elseif(iter> 36  && iter< 42 )
        note= 23 
  elseif(iter> 41  && iter< 45 )
        note= 31 
  elseif(iter> 44  && iter< 47 )
        note= 29 
  elseif(iter> 46  && iter< 58 )
        note= 41 
  elseif(iter> 57  && iter< 63 )
        note= 47 
  elseif(iter> 62  && iter< 66 )
        note= 43 
  elseif(iter> 65  && iter< 68 )
        note= 47 
  elseif(iter> 67  && iter< 79 )
        note= 23 
  elseif(iter> 78  && iter< 84 )
        note= 31 
  elseif(iter>= 84 )
        iter=-1
  endif,
  z = z^(note/ 33.875) +c
  z = z*z
  z = z*z +c
  |z| <= imag(P1)
}


Div        { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Sun, 4 Apr 2004 05:46:01
             ; Rotation relates to atan(P2), while scale is proportional
             ; to |P2| or cabs(P2), and P3 will position.
             ;
  z=z-z, c=fn1(pixel):
  z=(z*z +c)/P2 +P3
  |z| <= real(P1)
}


FlipRNot   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Sun, 4 Apr 2004 08:49:48
             ; function=zero/ident/recip .  Radical orbits.
             ;
  z=fn1(pixel), c=fn2(pixel):
  z = sqr(z) +c
  c = fn3(c)
  LastSqr <= real(P1)
}


FunkRNot   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Sun, 4 Apr 2004 10:35:21
             ; The imaje is the same in this case.
             ;
  z=fn1(pixel), c=fn2(pixel), d=fn3(pixel), flop=1:
  temp=d
  flop=-flop
  if(flop==-1)
        temp=c
  endif,
  z = sqr(z) +temp
  LastSqr <= real(P1)
}


Extend     { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Sun, 4 Apr 2004 10:28:36
             ; 
  z=fn1(pixel), c=fn2(pixel):
  z= z*z +fn3(z) +c
  |z| <= real(P1)
}


Extend-2   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Mon, 5 Apr 2004 19:37:24
             ; z=z^2 +z +c: params=-4/0 function=ident/ident/ident
             ; As first posted, this turned out be curiously close
             ; to Club_Lambda (as a formula), so the parameters
             ; hav changed and the formula has the same result.
             ;
  z=fn1(pixel), c=fn2(pixel), t=|real(P1)|:
  if(real(P1)<0)
        temp =fn3(z)
  else
        temp =-fn3(z)
  endif,
  z=sqr(z) +temp +c
  LastSqr <= t
}


MarksBug   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 22 Apr 2004 05:17:38
             ; Attempt at speeding up Mark's Mandel with flexibility.
             ; Methinks that the similarity between manzpower and
             ; Mark's Mandel is the error, but the hard-coded formula
             ; does seem to allow for larger exponents before it
             ; decays. Maybe it's z(n+1)=c^(ex-1)*z(n) +c
  z=fn1(pixel), c=fn2(pixel), a=c^real(P1)-1:
  z=a*sqr(z) +c,
  LastSqr<= imag(P1)
}


MarksMandel  { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 05 Feb 2004 11:05:00
             ; Documentation could read as z(n+1)=c^(ex-1)*z*z +c.
		 ; If default functions were ident/ident, then this would
		 ; work the same way with old parameter files, too.
		 ; I like marks's bug better, though.
  z=fn1(pixel), c=fn2(pixel), a=c^(real(P1)-1):
  z=a*sqr(z) +c,
  LastSqr<= imag(P1)
}


MuthMath   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Thu, 22 Apr 2004 06:15:37
             ; Assuming that "mix" means "add", which it doesn't.
             ;
  z=fn1(pixel), c=fn2(pixel):
  z=1/z +z^(-2) +c,
  |z| <= real(P1)
}


Waffle     { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
             ; Mon, 26 Apr 2004 12:13:54
             ; Very productive for icons. Ex-president Clinton
             ; must be in this equation. Interchangeable with funk_r_not.
             ;
  z=fn1(pixel), clear=fn2(pixel), set=fn3(pixel), flop=1:
  c=clear
  if(flop==-1)
        c=set
  endif,
  flop=-flop
  z = sqr(z) +c,
  LastSqr <=real(P1)
}


julfnzsqrd  { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
              ; Tue, 18 May 2004 13:35:30
              ; Simplifies to hard-coded julfn+zsqrd.
  z=fn1(pixel), c=P2:
  z= fn2(z) +z*z +c
  |z| <= real(P3)
}


BrohTweak   { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
              ; Sat, 07 Feb 2004 13:50:00
              ; 
  z=fn1(pixel), c=fn2(pixel), a=y=1, x=2, b=imag(P2), t=|sqrt((0,2))|
  if(real(P1)!=0)
     x=real(P1)
  endif
  if(imag(P1)!=0)
     y=imag(P1)
  endif
  if(real(P2)!=0)
     a=real(P2)
  endif
  if(imag(P2)!=0)
     b=imag(P2)
  endif
  if(real(P3)!=0)
     t=real(P3)
  endif:
  z = a*z^x -fn3(b*z^y) +c
  |z| <= real(t)
}


DuckOWar    { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
              ; Tue, 18 May 2004 12:56:00
              ; Slightly different from "frenzy" (deleted).
		  ; More flexible. That's all.
  z = fn1(pixel), s=-fn3(fn2(pixel)):
  z = z * s + z
  s = s/z + pixel
  |z| <= real(P1)
}


FractAnimation  { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                  ; Sat, 13 Mar 2004 12:09:00
                  ; Usable on most functions, but default has an island.
  z=fn1(pixel), c=fn2(pixel), d=P1:
  z=d*z^c -z^2 +c
  |z| < = 4
}


Extension       { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                  ; Sun, 14 Mar 2004 15:11:00
                  ; 
  z=fn1(pixel), c=fn2(pixel), d=P1:
  z= z*z +conj(z) -c
  |z| <=4
}


Stock           { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                  ; Wed, 17 Mar 2004 15:15:00
                  ; 
  z=z-z, c=fn1(pixel), iter=-1:
  iter=iter+1,
  if(iter== 0 )
     note=( 11 ,0.14285714285714280)
  elseif(iter== 1 )
     note=( 13 ,0.09090909090909091)
  elseif(iter== 2 )
     note=( 17 ,0.33333333333333330)
  elseif(iter== 3 )
     note=( 19 ,0.20000000000000000)
  elseif(iter== 4 )
     note=( 16 ,0.14285714285714280)
  elseif(iter== 5 )
     note=( 23 ,0.14285714285714280)
  elseif(iter== 6 )
     note=( 31 ,0.09090909090909091)
  elseif(iter== 7 )
     note=( 29 ,0.33333333333333330)
  elseif(iter== 8 )
     note=( 23 ,0.20000000000000000)
  elseif(iter== 9 )
     note=( 31 ,0.14285714285714280)
  elseif(iter== 10 )
     note=( 11 ,0.14285714285714280)
  elseif(iter== 11 )
     note=( 9 ,0.09090909090909091)
  elseif(iter== 12 )
     note=( 13 ,0.33333333333333330)
  elseif(iter== 13 )
     note=( 17 ,0.20000000000000000)
  elseif(iter== 14 )
     note=( 13 ,0.14285714285714280)
  elseif(iter== 15 )
     note=( 29 ,0.14285714285714280)
  elseif(iter== 16 )
     note=( 51 ,0.09090909090909091)
  elseif(iter== 17 )
     note=( 59 ,0.33333333333333330)
  elseif(iter== 18 )
     note=( 44 ,0.14285714285714280)
  endif
  if(iter>= 127 )
     iter=-1
  endif
  temp=real(note)* 19 / 459 + flip(imag(note))
  z=(z+temp)*(z-temp)*(z+flip(temp))*(z-flip(temp))/c
  |z| <= real(P1)
}


Quadrat         { ; SherLok Merfy <brewhaha@freenet.edmonton.ab.ca>
                  ; Wed, 26 May 2004 21:23:00
                  ; Conjugates tend to make fine lines and textures.
  z=fn1(pixel), c=fn2(pixel):
  z=z*z -conj(z*c) +c,
  |z| <= real(P1)
}


