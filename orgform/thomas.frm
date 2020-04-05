
frm:Squares {
 s2=sqrt(2)
 ampl=1/0.02
 ang=3.1415926535898/real(p1)
 cs=cos(ang)
 sn=sin(ang)
 px=pixel
 a=real(px)
 b=imag(px)
 z=0:
 c=s2*(a*cs-b*sn)
 d=s2*(a*sn+b*cs)
 a=c
 b=d
 z=z+1
 ampl*(abs(a)+abs(b))>1
 }
