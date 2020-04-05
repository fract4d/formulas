hints { ; try fn=ident , p1 < 1 
        }


2Ratz-fn {z = Pixel :  
          z = (z * z * fn1(z) * p1 + Pixel )/(z * fn2(z) * p1 + Pixel ) , 
          | z | <= 10 }


2jRatz-fn {z = Pixel :  
           z = (z * z * fn1(z) * p1 + p2 )/(z * fn2(z) * p1 + p2 ) , 
           | z | <= 10 }


3Ratz-fn {z = Pixel :  
         z = (z * z * z * fn1(z) * p1 + Pixel )/(z * z * fn2(z) * p1 + Pixel ) , 
         | z | <= 10 }


3jRatz-fn {z = Pixel :  
         z = (z * z * z * fn1(z) * p1 + p2 )/(z * z * fn2(z) * p1 + p2 ) , 
         | z | <= 10 }

