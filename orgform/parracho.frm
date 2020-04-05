cubicQueues  { ; September 01, 2001
               ;Rui S. Parracho
  IF(|p1|==0), a=(3,0), ELSE, a=p1, ENDIF
  IF(|p2|==0), b=(2,0), ELSE, b=p2, ENDIF
  IF(|p3|==0), c=(1,0), ELSE, c=p3, ENDIF
  d=pixel
  z=1/3*a+1/3*c+1/3*b+1/3*sqrt(a^2-a*c-a*b+c^2-b*c+b^2):
  z=(z-a)*(z-b)*(z-c)+d,
  |z| <= 256
}

Scarlotta3   { ; September 15, 2001
               ;Rui S. Parracho
  z=pixel/pi,
  c=pixel,
  :
  rz=c/z 
  z=((rz)+sin(rz)), 
  cabs(z/( (sqrt(z*z-1) + z) )) > .5
}
