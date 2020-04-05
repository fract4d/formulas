BEJ_N39{;
z=c=pixel,maria=log(z):
z=fn1(z)
z=(z*z+c)+(maria/p1)
|z|<4
}

BEJ_N13  {;
z=pixel,c=atan(pixel):
z*z*z=z^sqr(5+1/p1)*(-1+3/p2)
zsqr=z*z
x = (1.5+z^p1)^(1/p1)
z = z*(1+y)/(1-x) + p2
z=fn1(z)+c
z=fn2(z)-c
|z| <4
}

BEJ_M9{;
fn1(z)=pixel:
z=z*z+c
z=z*z
z=fn1(z*z+c)
z=fn2(fn3(z+z*c))
|z*z+c|<4
}

BEJ_22  {;
z=pixel:
z=z*z*z
z1=z*z*z*z
z=fn1(z1)+pixel
|z|<4
}

mandel-newton_j6e {    ; Sylvie Gallet [101324,3444], 1995
   z = pixel , c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center/rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit),test3=(zn^limit)
   c=(-0.7456,-0.0186)
   c=sin(conj(-0.81256,-0.1295))
   z = (z-zn)*test2 + zn
   z2 = fn1(z*z/c)-(zn) , z4 = (z2*z2) , z1 = (z4*z-1)/(4*z4)
   z = (z2+(c))*test1 + (z-z1)*(1-test1) 
   iter = iter+(2.079,-2.079)
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

mandel-newton_j6g {    ; Sylvie Gallet [101324,3444], 1995
   z = pixel , c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center/rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   c1=(-0.7056,-0.0086)
   c=fn1((sin)+fn2(conj(-0.80256,-0.1095)))
   z = (z-zn)*test2 + zn
   z2 = (z^2+(-0.6956,0.10)+(test1/7*pixel)) , z4 = (z2*z2) , z1 = (z4*z-1)/(4*z4)
   z = (z2+(c))*test1 + (z-z1)*(1-test1) 
   iter = iter+(3.099,-3.099)
   ((|z2| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

man-jul-BJ6a {  ;Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
   z = pixel , c = z , z2 = z*z, z3 = z*z2,
   compt=0 , limit = real(p1) , bailout = 4
   p = (-0.743380900000982,-0.131850030300002) :
   test = (compt<limit)
   num = (z3 + p2*z2 + 1)^.5      
   denom = (1.5*z2 + p2*z)/num  
   c = c*test+p*(1-test)
   z = fn1(z) - (num/denom)           
   z2 = z*z
   z3 = z*z2
   z = z*z+c
   compt = compt+1
   p3 <= |z3 + p2*z2 + 1|
}

zmincoszb  {;
z =c= pixel:
z10=z*z+c
fz = z - cos(z10);
fdashz = 1 + sin(z);
z = z - fz/(fdashz + P1);
0.0001 <= |fz|
}

BJ-BC1997f(XAXIS) {;Modified Bob Carr modified Sylvie Gallet frm. [101324,3444],1996
z=pixel,c=pixel,
z1=c1=(1.5*z),z2=c2=(2.25*z),z3=c3=(3.375*z),z4=c4=(5.0625*z),
l1=real(p1), 
l2=imag(p1),
l3=real(p2),
l4=imag(p2),
bailout=16, iter=0 :
t1=fn1(iter==l1) , t2=fn2(iter==l2) , t3=fn3(iter==l3),t4=fn4(iter==l4),
c=(-0.7456,-.0186)
c=sin(conj(-0.81256,-0.1295))+p3
z=z*(1-(t1||t2||t3||t4))
c=c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 +c4*t4 
z=z*z+c,
iter=iter+1
|real(z)| <= bailout
}

BJ-SG-3-03-g { ;Modified Sylvie Gallet [101324,3444], 1996
z = pixel , c = sin(conj(-0.81256,-0.1295)) :
 x = real(z) , y = imag(z)
 x1 = x - p1*fn1(x*x+p2*fn2(y)) 
 y1 = y - p1*fn1(y*y+p2*fn2(x)) 
 z = x1+flip(y1)
 |z| <= 4
}

BJ-SG-G-1-d    {; Modified Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel,c1=fn1(c=sin(conj(-0.81256,-0.1295)))/p3
  z1 = c1 = 1.5*z , z2 = c2 = 2.25*z , z3 = c3 = 3.375*z , z4 = c4 = 5.0625*z
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-man-newt-j {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = pixel , c = sqrt(fn1(conj(fn2(z+pixel)))/p2)^2+0.25 , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center+rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-SG-man-newt-l {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = pixel , c = fn1(real(pixel))+fn2(sqrt(imag(pixel))), iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center+rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-SG-man-man-a { ;Modified Sylvie Gallet [101324,3444], 1995
                ; requires "periodicity=0" (<g> command)
   c1 = (0.34396372130558980 , 0.05608272738673762)
   c2 = (-0.72141758920523890 , 0.25918045895127010)
   c = z = sqr(conj(fn2(pixel))) , delta = fn1(c2-c1) , b = c+delta
   compt = 0 , limit = real(p1) , bailout = 16 :
   test1 = (compt<limit) , test2 = (compt!=limit)
   z = z * test2
   c = b - delta * test1
   z = z*z+c
   compt = compt+1
   |z| <= bailout
}

BJ-SG-man-newt-p {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = pixel , c = c=sin(fn1(sqrt(log(1/pixel*0.91/pixel)))), iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center+rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-SG-man-newt-dd {    ; Modified Sylvie Gallet [101324,3444], 1995
   z = pixel , c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center+rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = fn1(z*z)/(z*z*z) , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-man-lam-fn-6 { ; Sylvie Gallet [101324,3444], 1995
                  ; requires "periodicity=0" (<g> command)
   c = z = fn1(pixel*sqr(1.0,0.1)) , lambda = (1.0,0.4) 
   pix2 = pixel*4+0.8 , compt = 0 , limit = real(p1) :
   test1 = (compt<limit) , test2 = (compt!=limit)
   z = (z-pix2)*test2 + pix2
   bailout = 4096 - 4032*test1
   z2 = lambda*sin(z)/(pix2/p2)
   z = (z*z+c-z2)*test1+z2
   compt = compt+1
   |z| <= bailout
}

BJ-man-lam-fn-9b { ; Sylvie Gallet [101324,3444], 1995
                  ; requires "periodicity=0" (<g> command)
   c = z = fn1(conj(sin(pixel*(1.0,0.1)/p2)))/(1.0,0.1)-fn3(conj(sin(pixel*(1.0,0.1)/p2))) , lambda = (1.0,0.4)/p3 
   pix2 = fn2(pixel*4+0.8) , compt = 0 , limit = real(p1) :
   test1 = (compt<limit) , test2 = (compt!=limit)
   z = (z-pix2)*test2 + pix2
   bailout = 4096 - 4032*test1
   z2 = lambda*sin(z)
   z = (z*z+c-z2)*test1+z2
   compt = compt+1
   |z| <= bailout
}

BJ-SG-G-1-g021   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel, c0=(0.08638,-0.4922)
  z1 = c1 = 1.5*z , z2 = c2 = 2.25*z , z3 = c3 = 3.375*z , z4 = c4 = 5.0625*z , z5 = c5 = z*z*z , z6 = c6 = fn1(z1*z2*z3*z4*z5)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = real(p3) , l6 = imag(p3)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4) , t5 = (iter==l5) , t6 = (iter==l6)
   z = fn2(z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + z6*t6)
   c = fn3(c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5 + c6*t6)
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g024   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel, c0=(0.08638,-0.4922)
  z1 = c1 = 1.5*z , z2 = c2 = fn1(2.25*z) , z3 = c3 = fn2(3.375*z) , z4 = c4 = fn3(5.0625*z) , z5 = c5 = fn4(7.0268*z) , z6 = c6 = z1*z2*z3*z4*z5
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2) , l5 = real(p3) , l6 = imag(p3)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4) , t5 = (iter==l5) , t6 = (iter==l6)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4 + z5*t5 + z6*t6
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4 + c5*t5 + c6*t6
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g031   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z) , z2 = c2 = fn2(2.25*z1) , z3 = c3 = fn3(3.375*z2) , z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g035   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z) , z2 = c2 = fn2(2.25*z1*z) , z3 = c3 = fn3(3.375*z2*z) , z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g051   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5*z*z*z*z) , z2 = c2 = fn2(sqrt(2.25*z1)) ,
  z3 = c3 = fn3(conj(3.375*z2))*(1/pixel) , z4 = c4 = fn4(conj(sin(z1*c2*z3)*(1/pixel)))
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g052   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(z*z*z) , z2 = c2 = fn2(2.25*z1) , z3 = c3 = fn3(3.375*z2) , z4 = c4 = fn4(z1*c2*z3)*(1/pixel)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g053   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel*(0.1,1.0)
  z1 = c1 = fn1(1.5/(z*z*z)) , z2 = c2 = fn2(2.25*z1) , z3 = c3 = fn3(3.375*z2) , z4 = c4 = fn4(z*z*z)*(1/pixel)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g062   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = sqr(conj(0.75*(pixel*pixel)))*(0.1,1.0)
  z1 = c1 = fn1(1.5/(z*z*z*z*z*z*z*z))/p3 , z2 = c2 = fn2(2.25*z1*z*z) ,
  z3 = c3 = fn3(3.375*z2) , z4 = c4 = fn4(z*z*z)^(1/pixel)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g067   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = fn4((((0.3,0.6)+pixel)/(0.20/-pixel))*(0.1,1.0)) 
  z1 = c1 = fn1(conj(sin(0.0742,-0.0391)))*(1.5*z) , z2 = c2 = fn2(2.25*z1) ,
  z3 = c3 = fn3(3.375*z2) , z4 = c4 = (z*z*z)*(1/pixel)
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 16 , iter = 0 :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = z*z+c
   iter = iter+1
    |z| <= bailout
  }

BJ-SG-G-1-g074   {; Sylvie Gallet [101324,3444], 1996
  ; 0 < real(p1) < imag(p1) < real(p2) < imag(p2) < maxiter, periodicity=0
  c = z = pixel , lambda = (1.0,0.4) , pix2 = pixel*4+0.8 , compt = 0 , limit = real(p1)
  z1 = c1 = (1.5*z)+fn1((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2)) , z2 = c2 = 2.25*z , 
  z3 = c3 = fn2((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2))  , z4 = c4 = fn3((z-pix2)*test2 + pix2 / ((z*z+c-z2)*test1+z2))
  l1 = real(p1) , l2 = imag(p1) , l3 = real(p2) , l4 = imag(p2)
  bailout = 4096 - 4032*test1  , iter = 0 , pix2 = pixel*4+0.8 , compt = 0 , limit = real(p3) :
   t1 = (iter==l1) , t2 = (iter==l2) , t3 = (iter==l3) , t4 = (iter==l4)
   test1 = (compt<limit) , test2 = (compt!=limit)
   z = z*(1-(t1||t2||t3||t4)) + z1*t1 + z2*t2 + z3*t3 + z4*t4
   c = c*(1-(t1||t2||t3||t4)) + c1*t1 + c2*t2 + c3*t3 + c4*t4
   z = (z-pix2)*test2 + pix2
   z5 = lambda*sin(z)
   z = (z*z+c)
   iter = iter+1
   |z| <= bailout
  }

BJ-SG-MaNewt-001 {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = fn1(1/pixel) , c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = (10*pixel+(5.0,-3.4))*(-0.1,-0.95)
   zn = center+rad/(pix-center)
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-SG-MaNewt-014 {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = pixel + rad, c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = fn1((10*pixel+(5.0,-3.4))*(-0.1,-0.95))
   zn = fn2(center+rad/(pix-center))
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-SG-MaNewt-024 {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = pixel * (center/p2) , c = z , iter = 1
   rad = 3.1 , center = fn1(-1.0,0.1)
   pix = fn2((10*pixel+((5.0,-1.4)/p3))*(0.0,-1.0))
   zn = fn3(center+rad/(pix-center))
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-SG-MaNewt-026 {    ;Modified Sylvie Gallet [101324,3444], 1995
   z = pixel * fn1(rad/p2) , c = z , iter = 1
   rad = 3.1 , center = (1.0,0.1)
   pix = fn2((10*pixel+(5.0,-3.4/p3))*(0.0,-0.95))
   zn = fn3(center+rad/(pix-center))
   limit = real(p1) , b1 = 16 , b2 = 0.0001 :
   test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   iter = iter+1
   ((|z| <= b1) * test1) || ((|z1| >= b2) * (1-test1))
}

BJ-man-julz-002 {  ; Sylvie Gallet [101324,3444], 1995
   z = fn1(flip(imag(1-pixel))*conj(tan(pixel))-conj(0.10/pixel)-flip(0.010/pixel)), c = z
   compt=0 , limit = real(p1) , bailout = 4
   p = (-0.743380900000982,-0.131850030300002)/p2 :
   test = (compt<limit)
   c = fn2(c*test+p*(1-test))
   z = z*z+c
   compt = compt+1
   |z| <= bailout
}

BJ-man-julz-004 {  ; Sylvie Gallet [101324,3444], 1995
   c = z = fn1((((0.3,0.6)+pixel)/(0.20/-pixel))*(0.1,1.0)), 
   compt=0 , limit = real(p1) , bailout = 4
   p = (-0.743380900000982,-0.131850030300002) :
   test = (compt<limit)
   c = c*test+p*(1-test)
   z = z*z+c
   compt = compt+1
   |z| <= bailout
}

lambdafn { ; 
 z = pixel,
 m = ((1, 0.4) * (|p1|<=0) + p1 ),  
 t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(m),
   abs(imag(z)) <= t && abs(real(z)) <= t
 }

lambdafn-mod { ; 
 z = pixel,
 m = ((1, 0.4) * (|p1|<=0) + p1 ),  
 t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(m),
   abs(imag(z)) <= t && abs(real(z)) <= t
 }

lambdafn-mod { ; 
 z = pixel,
 m = ((1, 0.4) * (|p1|<=0) + p1 ),  
 t = (64 * (real(p2)<=0) + real(p2) * (0<p2) ):
  z = fn1(z) * fn2(m),
   abs(imag(z)) <= t && abs(real(z)) <= t
 }
















































































