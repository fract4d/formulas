  Hi, I´m Albrecht Niekamp, Duesseldorf 
      Niekamp@online-club.de 

These formulas continue the multifrac.frm  formula-collection. Here you will find the  more sophisticated variations of the original  multifrac13 or multifrac13a formula.  The formula names correspond to the par-files  with the same number.   Suggestions, new par-files or own variations  are welcome.

--------------------------------------------------

multifrac68 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2<y2)  x=x2-y2-p1   y=y2-x2-p2  if (y2<w2)  w=w2-x2-p3    else  w=w2-y2-p3  endif  z=fn1(z+x+y+w)  else  x=x2*y2-p1  y=2*x2*y2-p2  if (x2<w2)  w=2*x2*w2-p3  else  w=2*y2*w2-p3  endif  z=fn2(z-x-y-w)  endif  |z| > (x2+w2+y2)  }

multifrac69 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2<y2)  x=x2-y2-p1   y=y2-x2-p2  if (y2<w2)  w=w2-x2-p3    else  w=w2-y2-p3  endif  z=fn1(z+x+y+w)  else  x=x2*y2+p1  y=2*x2*y2+p2  if (x2<w2)  w=2*x2*w2+p3  else  w=2*y2*w2+p3  endif  z=fn2(z-x-y-w)  endif  |z| > (x2+w2+y2)  }

multifrac70 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2<y2)  x=x2-y2-p1   y=y2-w2-p2  if (y2<w2)  w=w2-x2-p3    else  w=w2-y2-p3  endif  z=fn1(z+x+y+w)  else  x=x2*y2+p1  y=2*x2*w2+p2  if (x2<w2)  w=2*x2*w2+p3  else  w=2*y2*w2+p3  endif  z=fn2(z-x-y-w)  endif  |z| > (x2+w2+y2)  }

multifrac71 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2<y2)  x=x2-y2-p1   y=y2-w2-p2  if (y2<w2)  w=w2-x2-p3    else  w=w2-y2-p3  endif  z=fn1(z+x+y+w)  else  x=x2*y2+p1  y=x2*w2+p2  if (x2<w2)  w=x2*w2+p3  else  w=y2*w2+p3  endif  z=fn2(z-x-y-w)  endif  |z| > (x2+w2+y2)  }

multifrac72 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2>y2)  x=x2-y2-p1   y=y2-w2-p2  if (y2>w2)  w=w2-x2-p3    else  w=w2-y2-p3  endif  z=fn1(z+x+y+w)  else  x=x2*y2+p1  y=x2*w2+p2  if (x2>w2)  w=x2*w2+p3  else  w=y2*w2+p3  endif  z=fn2(z-x-y-w)  endif  |z| > (x2+w2+y2)  }

multifrac73 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2<y2)  x=x2-y2-p1   y=y2-w2-p2  if (y2<w2)  w=w2-x2-p3    else  w=w2-y2-p3  endif  z=fn1(z+x+y+w)  phc_bailout = |z| > (x2*y2*w2)  else  x=x2*y2+p1  y=x2*w2+p2  if (x2<w2)  w=x2*w2+p3  else  w=y2*w2+p3  endif  z=fn2(z-x-y-w)  phc_bailout = |z| > (x2+y2+w2)  endif  phc_bailout  }

multifrac74 {  cr=real(scrnpix)+2*imag(scrnpix)    r=cr-4*trunc(cr/real(4))  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (r<2)  x=2*x2-y2-p1   y=2*y2-w2-p2  if (r==0)  w=2*w2-x2-p3    else  w=2*w2-y2-p3  endif  z=fn1(z+x+y+w)  phc_bailout = |z| > (x2*y2*w2)  else  x=x2*y2+p1  y=x2*w2+p2  if (r==2)  w=x2*w2+p3  else  w=y2*w2+p3  endif  z=fn2(z-x-y-w)  phc_bailout = |z| > (x2+y2+w2)  endif  phc_bailout  }

multifrac75 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2<y2)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-x2-p3   z=fn1(z+x+y+w)  phc_bailout = |z| > (x*y)  elseif (y2<w2)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-y2-p3    z=fn1(z+x+y+w)  phc_bailout = |z| > (x*w)  elseif (x2<w2)  x=x2*y2+p1  y=x2*w2+p2  w=x2*w2+p3  z=fn2(z-x-y-w)  phc_bailout = |z| > (x+y)  else  x=x2*y2+p1  y=x2*w2+p2  w=y2*w2+p3  z=fn2(z-x-y-w)  phc_bailout = |z| > (x+w)  endif  phc_bailout  }

multifrac76 {  cr=real(scrnpix)+2*imag(scrnpix)    r=cr-4*trunc(cr/real(4))  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (r==0)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-x2-p3   z=fn1(z+x+y+w)  phc_bailout = |z| > (x*y*w)  elseif (r==1)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-y2-p3    z=fn1(z+x+y-w)  phc_bailout = |z| > ((x*y)/w)  elseif (r==2)  x=x2*y2+p1  y=x2*w2+p2  w=x2*w2+p3  z=fn2(z-x-y-w)  phc_bailout = |z| > (x+y+w)  else  x=x2*y2+p1  y=x2*w2+p2  w=y2*w2+p3  z=fn2(z-x-y+w)  phc_bailout = |z| > (x+y-w)  endif  phc_bailout  }

multifrac77 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (x2<y2)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-x2-p3   z=fn1(z+x+y+w)  ptc_bailout = |z| > (x*y*w)  elseif (y2<w2)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-y2-p3    z=fn2(z+x+y+w)  ptc_bailout = |z| > (x*w)  elseif (x2<w2)  x=x2*y2+p1  y=x2*w2+p2  w=x2*w2+p3  z=fn3(z-x-y-w)  phc_bailout = |z| > (x+y+w)  else  x=x2*y2+p1  y=x2*w2+p2  w=y2*w2+p3  z=fn4(z-x-y-w)  phc_bailout = |z| > (x+w)  endif  phc_bailout  }

multifrac78 {  cr=real(scrnpix)+2*imag(scrnpix)    r=cr-4*trunc(cr/real(4))  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (r==0)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-x2-p3   z=fn1(z+x+y+w)  ptc_bailout = |z| > (x*y*w)  elseif (r==1)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-y2-p3    z=fn2(z+x+y-w)  ptc_bailout = |z| > ((x*y)/w)  elseif (r==2)  x=x2*y2+p1  y=x2*w2+p2  w=x2*w2+p3  z=fn3(z-x-y-w)  ptc_bailout = |z| > (x+y+w)  else  x=x2*y2+p1  y=x2*w2+p2  w=y2*w2+p3  z=fn4(z-x-y+w)  ptc_bailout = |z| > (x+y-w)  endif  ptc_bailout  }

multifrac79 {  z = pixel:  y2 = y*y  x2 = x*x  w2 = w*w  if (whitesq)  if (X2<y2)  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-x2-p3   z=fn1(z+x+y+w)  ptc_bailout = |z| > (x*y*w)  else  x=2*x2-y2-p1   y=2*y2-w2-p2  w=2*w2-y2-p3    z=fn2(z+x+y-w)  ptc_bailout = |z| > ((x*y)/w)  endif  elseif (x2<w2)  x=x2*y2+p1  y=x2*w2+p2  w=x2*w2+p3  z=fn3(z-x-y-w)  ptc_bailout = |z| > (x+y+w)  else  x=x2*y2+p1  y=x2*w2+p2  w=y2*w2+p3  z=fn4(z-x-y+w)  ptc_bailout = |z| > (x+y-w)  endif  ptc_bailout  }

multifrac80 {  z = pixel:  y2 = y*y  x2 = x*x  if (whitesq)  if (X2<y2)  x=2*x2-y2-p1   y=2*y2-x2-p2  z=fn1(z+x+y)  ptc_bailout = |z| > (x*y)  else  x=2*x2-y2-p1   y=2*y2-x2-p2  z=fn2(z+x-y)  ptc_bailout = |z| > (x/y)  endif  elseif (x2<y2)  x=x2*y2+p1  y=x2*y2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2*p1  y=y2*x2*p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x-y)  endif  ptc_bailout  }

multifrac81 {  z = pixel:  y2 = y*y  x2 = x*x  if (whitesq)  if (X2<y2)  x=2*x2-y2-p1   y=2*y2-x2-p2  z=fn1(z+x+y)  phc_bailout = |z| > (x*y)  else  x=2*x2-y2-p1   y=2*y2-x2-p2  z=fn2(z+x-y)  phc_bailout = |z| < (x/y)  endif  elseif (x2<y2)  x=x2*y2+p1  y=x2*y2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2*p1  y=y2*x2*p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x-y)  endif  ptc_bailout  }

multifrac82 {  z = pixel:  y2 = y*y  x2 = x*x  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2-p1   y=2*y2-x2-p2  z=fn1(z+x+y)  phc_bailout = |z| > (x*y)  else  x=2*x2-y2-p1   y=y2*x2-p2  z=fn2(z+x-y)  phc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2+p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x-y)  endif  ptc_bailout  }

multifrac83 {  z = pixel:  y2 = y*y  x2 = x*x  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2-p1   y=2*y2-x2-p2  z=fn1(z+x+y)  phc_bailout = |z| > (x*y)  else  x=2*x2-y2-p1   y=y2*x2-p2  z=fn2(z+x-y)  phc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2+p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x-y)  endif  ptc_bailout  }

multifrac84 {  z = pixel:  y2 = y*y  x2 = x*x  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  z=fn1(z+x+y)  phc_bailout = |z| > (x-y)  else  x=2*x2-y2+p1   y=y2*x2-p2  z=fn2(z+x-y)  phc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2-p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x*y)  endif  ptc_bailout  }

multifrac85 {  z = pixel:  y2 = y*y  x2 = x*x  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  z=fn1(z+x+y)  ptc_bailout = |z| > (x*y)  else  x=2*x2-y2+p1   y=y2*x2-p2  z=fn2(z+x-y)  ptc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2-p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x-y)  endif  ptc_bailout  }

multifrac86 {  x2=x*x  y2=y*y  if ((x2*y2)<0)  if (x2<y2)  z = fn1(pixel)  else  z=fn2(pixel)  endif  elseif (x2<y2)  z=fn3(pixel)  else  z=fn4(pixel)  endif:  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  z=fn1(z+x+y)  phc_bailout = |z| > (x-y)  else  x=2*x2-y2+p1   y=y2*x2-p2  z=fn2(z+x-y)  phc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2-p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x*y)  endif  ptc_bailout  }

multifrac87 {  x2=x*x  y2=y*y  if ((x2*y2)<0)  if (x2<y2)  z = fn4(pixel)  else  z=fn3(pixel)  endif  elseif (x2<y2)  z=fn2(pixel)  else  z=fn1(pixel)  endif:  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  z=fn1(z+x+y)  phc_bailout = |z| > (x-y)  else  x=2*x2-y2+p1   y=y2*x2-p2  z=fn2(z+x-y)  phc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2-p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x*y)  endif  ptc_bailout  }

multifrac88 {  x2=x*x  y2=y*y  if (whitesq)  if (x2<y2)  z = fn1(pixel)  else  z=fn2(pixel)  endif  elseif (x2<y2)  z=fn3(pixel)  else  z=fn4(pixel)  endif:  if (whitesq)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  z=fn1(z+x+y)  phc_bailout = |z| > (x-y)  else  x=2*x2-y2+p1   y=y2*x2-p2  z=fn2(z+x-y)  phc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2-p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x*y)  endif  phc_bailout  }

multifrac89 {  x2=x*x  y2=y*y  if (whitesq)  if (x2<y2)  z = pixel  else  z=-pixel  endif  elseif (x2<y2)  z=1/pixel  else  z=Z/pixel  endif:  if (whitesq)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  z=fn1(z+x+y)  phc_bailout = |z| > (x-y)  else  x=2*x2-y2+p1   y=y2*x2-p2  z=fn2(z+x-y)  phc_bailout = |z| > (y-x)  endif  elseif (x2<y2)  x=x2*y2+p1  y=y2-x2+p2  z=fn3(z-x+y)  ptc_bailout = |z| > (x+y)  else  x=x2*y2-p1  y=x2*y2+p2  z=fn4(z-x-y)  ptc_bailout = |z| > (x*y)  endif  phc_bailout  }

multifrac90 {  x2=x*x  y2=y*y  w2=w*w  if ((x2*y2)<0)  if (x2<y2)  z = fn1(pixel)  else  z=fn2(pixel)  endif  elseif (x2<w2)  z=fn3(pixel)  else  z=fn4(pixel)  endif:  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  w=2*w2-x2+p3  z=fn1(z+x+y+w)  phc_bailout = |z| > (-x-y-w)  else  x=2*x2-y2+p1   y=y2*x2-p2  w=w2*x2-p3  z=fn2(z+x+y-w)  phc_bailout = |z| > (-x-y+w)  endif  elseif (x2<w2)  x=x2*y2+p1  y=y2-x2+p2  w=w2-x2+p3  z=fn3(z-x-y-w)  ptc_bailout = |z| > (x+y+w)  else  x=x2*y2-p1  y=x2*y2+p2  w=x2*w2+p3  z=fn4(z-x+y+w)  ptc_bailout = |z| > (x-y-w)  endif  ptc_bailout  }

multifrac91 {  x2=x*x  y2=y*y  w2=w*w  if ((x2*y2)<0)  if (x2<y2)  z = fn1(pixel)  else  z=fn2(pixel)  endif  elseif (x2<w2)  z=fn3(pixel)  else  z=fn4(pixel)  endif:  if ((x2*y2)<0)  if (X2<y2)  x=2*x2-y2+p1   y=2*y2-x2+p2  w=2*w2-x2+p3  z=fn1(z+x+y+w)  phc_bailout = |z| > (-x-y-w)  else  x=2*x2-y2+p1   y=y2*x2-p2  w=w2*x2-p3  z=fn2(z+x+y-w)  phc_bailout = |z| > (-x-y+w)  endif  elseif (x2<w2)  x=x2*y2+p1  y=2*y2-x2+p2  w=2*w2-x2+p3  z=fn3(z-x-y-w)  ptc_bailout = |z| > (x+y+w)  else  x=x2*y2-p1  y=x2*y2+p2  w=x2*w2+p3  z=fn4(z-x+y+w)  ptc_bailout = |z| > (x-y-w)  endif  ptc_bailout  }
