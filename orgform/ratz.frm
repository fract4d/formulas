general { ;try p2=0.3 , p1=4
          z=pixel : z=(p2*z^p1+pixel)/(p2*z^(p1-1)+pixel),|z|<=10}

Ratz-fn {z = Pixel :  
         z = (z * z * z * fn1(z) * p1 + Pixel )/(z * z * fn2(z) * p1 + Pixel ) , 
         | z | <= 10 }

;schrott

ratz1p12 {z=pixel: z=p1*z/pixel+p2,|z|<=10}
zapfl2(XAXIS) {z=pixel: z=(z*z+pixel)/z,}
zapfl2j(XAXIS) {z=pixel: z=(z*z+p2)/z,}
zapfl3(XAXIS) {z=pixel: z=(pixel+z*z*z)/(z*z),|z|<=100}
zapfl3jp1 {z=pixel: z=(z*z*z+p1)/(z*z),}
ratz2j {z=pixel: z=(z*z+p1)/(z+p1),|z|<=10}
ratz6j {z=pixel: z=(z*z*z*z*z*z+p1)/(z*z*z*z*z+p1),}
ratz3p12 {z=pixel: z=(z*z*z*p1+pixel)/(z*z*p2+pixel),|z|<=10}
ratz3jp12 {z=pixel: z=(z*z*z*p1+p2)/(z*z*p1+p2),|z|<=10}
zapfl4p12 {z=pixel: z=(z*z*z*z+(pixel*p1))/(z*z*z*p2),|z|<=4}




