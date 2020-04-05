j_reel_1 {      ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                ; requires "float=no"
   z = pixel , x = real(z) , y = imag(z) :
   x2 = x*x , y2 = y*y , x3 = x2*x , y3 = y2*y
   x = x3-y3+y , y = x2-y2 , z = x+flip(y)
   |z| <= p1
   }

Newton_z3_sinz2 { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                  ; equation z^3+sin(z^2) = 0
                  ; solution z = 0
   z = pixel :
   z2 = z*z   
   z = z - (z*z2+sin(z2))/(3*z2+2*z*cos(z2))
   |z| >= p1
}

newton_reel_1 (ORIGIN) {
                ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                ; Newton's method applied to x^3-y = 0
                ;                            y^3+x = 0
                ;                            solution (0,0)
   z = pixel , x = real(z) , y = imag(z) :
   x2=x*x , y2=y*y , x3=x2*x , y3=y2*y
   d = 1+9*x2*y2
   x = (6*x3*y2 + 2*y3) / d
   y = (6*x2*y3 - 2*x3) / d
   z = x+flip(y) 
   |z| >= 0.01
}

Newton_reel_4   { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z = (1-Pixel)/(1+Pixel) , sol = (1.0,1.0) :
   x=real(z) , y=imag(z)          ; (x^3 - 1)/y = 0
   x3 = x*x*x , y2 = y*y          ; (y^2 - 1)/x = 0
   xy = x3*y2 , d = 5*xy+x3+y2-1  ; solution (1,1)
   c = xy + x3 + 2*y2 - 1 
   x1 = 2*x*c
   y1 = y*(c+4*x3-1)
   z = (x1+flip(y1))/d 
   |z-sol| >= p1
}

Gmandel_1 {     ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                ; bailout = p1
   z = pixel/(conj(pixel)+(0.0,1.0)) 
   c = (1/pixel)/(flip(conj(pixel))-1.0) :
   z = z*z+c
   |z| <= p1
}

mandel-mandel { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                ; requires "periodicity=0" (<g> command)
   ; shifts between 2 Mandel formulas 
   ; iter < limit  ==>  z=z^2 + pixel
   ; iter > limit  ==>  z=z^2 + pixel + delta
   ; with limit = real(p1)
   c1 = (0.34396372130558980 , 0.05608272738673762)
   c2 = (-0.72141758920523890 , 0.25918045895127010)
   c = z = pixel , delta = c2-c1 , b = pixel+delta
   iter = 0 , limit = real(p1) , bailout = 16 :
   test1 = (iter<limit) , test2 = (iter!=limit)
   z = z*test2 , c = b - delta*test1
   z = z*z+c , iter = iter+1
   |z| <= bailout
}

mandel-lambdafn { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                  ; requires "periodicity=0" (<g> command)
   ; shifts between 2 algorithms 
   ; iter < limit  ==>  z=z^2 + pixel
   ; iter > limit  ==>  z=lambda*sin(z)
   ; with limit = real(p1)
   c = z = pixel , lambda = (1.0,0.4) 
   pix2 = pixel*4+0.8 , iter = 0 , limit = real(p1) :
   test1 = (iter<limit) , test2 = (iter!=limit)
   z = (z-pix2)*test2 + pix2 , bailout = 4096 - 4032*test1
   z2 = lambda*sin(z) , z = (z*z+c-z2)*test1+z2
   iter = iter+1
   |z| <= bailout
}

mandel-lambdafn_2 { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                    ; requires "periodicity=0" (<g> command)
   ; shifts between 2 algorithms 
   ; iter < limit  ==>  z=z^2 + pixel
   ; iter > limit  ==>  z=lambda*sin(z)
   ; with limit = real(p1)
   c = z = pixel , lambda = (1.0,0.4)
   pix2 = pixel*4+0.8 , iter = 0 , limit = real(p1) :
   test1 = (iter<limit) , test2 = (iter!=limit)
   z = (z-pix2)*test2 + pix2
   bailout = 20000 + 1000*test1
   z2 = lambda*sin(z) , z = (z*z+c-z2)*test1+z2
   iter = iter+1
   |z| <= bailout
}

96 (ORIGIN)     { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                  ; requires "periodicity=0" (<g> command)
 z = pixel , c=(-0.63,-0.4) , r1 = 0.10 , dr = 0.05, c1 = (-0.15,0.15) 
 r2 = 4*r1+dr , c2 = c1-3*r1-dr
 test1=(cabs(sqrt(|z-c1|)-r1-dr/2)<dr/2)
 test2=(r2<sqrt(|z-c2|))&&(sqrt(|z-c2|)<r2+dr)&&(z-c2>2*r1)&&imag(z-c2)<0
 test3=(r2<sqrt(|z+c2|))&&(sqrt(|z+c2|)<r2+dr)&&(z+c2<-2*r1)&&imag(z+c2)>0
 test = test1 || test2 || test3 :
 z2=z*z+c
 z=z*test + z2*(1-test)
 |z|<=100
}

mandel-newton {    ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z = pixel , c = z , iter = 1
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

mandel-newton-2 {; Sylvie Gallet 101324.3444@compuserve.com, 1995
                 ; requires periodicity=0 (<g> command)
   limit = real(p1) , test0 = 1 , test3=0 , iter = 1 
   z = pixel , c = z , b1 = 16  
   rad = 6 , pix = (10*pixel+(8.0,-5))*(-0.1,-0.95)
   center = (1.0,0.1) , zn = center+rad/(pix-center) , b2 = 0.0001 :
   test0 = 1-test0 , test1 = (iter<limit) , test2=(iter!=limit)
   z = (z-zn)*test2 + zn
   z2 = z*z , z4 = z2*z2 , z1 = (z4*z-1)/(4*z4)
   z = (z2+c)*test1 + (z-z1)*(1-test1) 
   test3 = (test3 || (|z|>b1))
   t = (test3 && test0 && test1) , z = z + (0.00000001 - z)*t
   iter = iter+1
   ((|z|<=b1)*test1) || ((|z1|>=b2)*(1-test1))
}

gallet-2-01 {   ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   c = z = fn1(pixel) , fn2c = fn2(c) : 
   z = z*z+fn2c , z = fn1(z*z)*(z+pixel)+fn2c
   |z| <= 100
}

gallet-2-04 (XAXIS) { ; Sylvie Gallet 101324.3444@compuserve.com, 1995 
   a=pixel , z=a , b=0 , a2=3*a*a :
   z = z^3 - a2*z + b
   b = b+.01
   |z| <= 100  
} 

gallet-2-05 {   ; Sylvie Gallet 101324.3444@compuserve.com, 1995 
                ; z -> cos(z^2)+sin(z^3)-1 = 0
                ;      solution z = 0
   z = 1/pixel , test = (|z| < 100) :
   z2 = z*z , z3 = z2*z
   z = z-(cos(z2)+sin(z3)-1)/(-2*z*sin(z2)+3*z2*cos(z3))
   (|z| >= real(p1)) && test  
} 

gallet-2-06 (YAXIS) { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z = flip(pixel) :
   sinz = sin(z)
   z0 = sinz^(p1-1) , z1 = (sinz*z0+z)/(p1*z0+1)
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-07 {   ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                ; (sin z)^p1 + z = 0 solution = 0
   z = pixel:
   sinz = sin(z)
   z0 = sinz^(p1-1) , z1 = (sinz*z0+z)/(p1*z0*cos(z)+1)
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-08 {   ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z = pixel , p = p1-1 :
   zp = z^p
   z1 = (z*zp-1)/(p1*zp*fn1(z))
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-09 {   ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z = pixel , p = p1-1 :
   sinz = sin(z)
   z0 = sinz^p , z1 = (sinz*z0+z)/(p1*z0*fn1(z)+1)
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-11 {   ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z = pixel , a = p1-1 , b = p1-2 , ap1 = a*p1 :
   zb = z^b , za = z*zb , zp1 = z*za , n1 = zp1-z , n2 = p1*za-1
   z1 = n1/(n2 - ap1*zb*fn1(z)*n1/(2*n2)) 
   z = z-z1
   |z1| >= 0.000001
}

gallet-2-12 {   ; Sylvie Gallet 101324.3444@compuserve.com, 1995
                ; Newton's method applied to
                ; x -> sin(y)^2+cos(x) = 0
                ; y -> cos(x)^2+sin(y) = 0
  z=pixel , x=real(z) , y=imag(z)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y) :
  d=-1+4*sy*cx
  x=x+(sy*sy-cx+2*sy*cx*cx)/(d*sx)
  y=y-(2*cx*sy*sy+cx*cx-sy)/(d*cy)
  sx=sin(x) , sy=sin(y) , cx=cos(x) , cy=cos(y)
  z=x+flip(y)
  |sy*sy+cx+flip(cx*cx+sy)|>=0.000001
}

fn1+fn2 (XYAXIS) { ; Sylvie Gallet 101324.3444@compuserve.com, 1995
   z=flip(pixel) :
   z1=p1*fn1(z)+p2*fn2(z)
   z=z1
   |z|<=64
}
