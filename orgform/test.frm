njutn{z=pixel: z=(z/imag(z)*z/real(z)*z*z*z+pixel),|z|<=4}
njutn-j {z=pixel: z=(z/imag(z)*z/real(z)*z*z*z+p1),|z|<=4}

njutnallg {z=pixel: z=(z^p1/(imag(z)*real(z))+pixel),|z|<=4} 
njutnall-j {z=pixel: z=(z^p1/(imag(z)*real(z))+p2),|z|<=4} 

9{z=pixel: z=(pixel*imag(z)+z)*z/real(z)+p1*pixel,|z|<=4}
9j{z=pixel: z=(p2*imag(z)+z)*z/real(z)+p1*p2,|z|<=4}
oppl{z=pixel: z=pixel+sin(pixel*z)+z*z,|z|<=4}
spider {z=pixel,f=pixel: 
         f=f/p2+z
         z=fn1(z^p1)+fn2(f),
         |z| <= 4 }
spiderM {z=pixel,f=pixel,g=pixel: 
         f=f/p1+z,
         z=fn1(z^(p2+g))+fn2(f),
         |z| <= 4 }

apflmatsch { z=pixel:
         z=sqr(z)+pixel,
         |z*fn1(p1*fn2(p2*pixel/|pixel|))| <= 4 }

manowar { z=pixel , g=pixel , f=pixel:
          g = f,
          f = z,
          z = fn1(z^p1) + fn2(p2*g) + pixel 
          |z|<=4 }
Ratz { z=pixel:
       z=(p1*fn1(z)^p2+pixel)/(p1*fn2(z)^(p2-1)+pixel),
       |z|<=10 }
mixup { z=fn1(pixel):
        z=sqr(z)+fn2(pixel),
        |z|<= 4 }
