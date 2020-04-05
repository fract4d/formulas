comment {

           From :

           sciwise@ihug.co.nz       July  2009

           copyright c  2009


       This is a model of a diode , as an electronic
     component .
       It utilizes Newton's method to solve a non-linear
     equation ; known as the ideal diode or Shockley equation .
       The very basic form of this equation is :

           i = Ids*(exp(Vs/(n*Vt))-1)

       where ,

      Q =  1.6*(10^-19)   Electronic Charge   .
      K =  1.38*(10^-23)  Boltzman's constant .
      T =  Absolute Temperature , in Kelvins  .

      T = 273 [K] + degreesC
     For degreesC = 25 , Vt ~= 0.025 [v]

    Ids =  Saturation current                 .
     Vs =  Applied , source , voltage         . 
      n =  Ideality factor = ( 1 to 2 )       .
     Vt =  K * T / Q       Thermionic Voltage .

     A more realistic model of a diode will include the finite
   ohmic resistance of the leads .
     A parallel conductance is also modeled , as this speeds
   the convergence of Newton's method .
     Therefore the circuit we're modelling looks like this .


                     i -->
         ----------------------------,
        '                            |
        |                   -------------------,
        |                   |                .---.
    Vs  -               D  ---               |   |  Gm
       ---                 /_\               |___|
        |                   |__________________|
        |                            |
        |                          .---.
        |                          |   | Rs  
        |                          |___|
        '----------------------------'


      Where D is represented by the ideal diode equation .

      Now the total current , i , flowing through this
    circuit is :

         i = Ids*(exp((Vs-i*Rs)/(n*Vt))-1) + Gm*(Vs-i*Rs)

     This equation needs to be solved in terms of i and
   be put in a form that can be readily and accurately
   solved through Newton's method .
     The steps involved are :

 1)
    Let    log(x) = (Vs-i*Rs)/(n*Vt)  

 2)
    Solve  log(x) = (Vs-i*Rs)/(n*Vt)  in terms of   i  .
               i  = -(n*Vt*log(x)-Vs)/Rs
 3)
   Substitute the expression for i , from (2) into

         i = Ids*(exp((Vs-i*Rs)/(n*Vt))-1) + Gm*(Vs-i*Rs)

     -(n*Vt*log(x)-Vs)/Rs = Ids*(x-1) + Gm*(Vs--((n*Vt*log(x)-Vs)/Rs)*Rs)

     -(n*Vt*log(x)-Vs)/Rs = Ids*(x-1) + Gm*((n*Vt*log(x)/Rs)*Rs)

    
        (Vs-n*Vt*log(x))/Rs = Ids*(x-1) + Gm*(n*Vt*log(x))



 4)
   Solve (3) for x ,

         x = -((Gm*n*Rs*Vt+n*Vt)*log(x)-Vs-Is*Rs)/(Is*Rs),Is*Rs,1);

 5)
    Find the derivative of (4) in terms of  x  .

       1 = -(Gm*n*Rs*Vt+n*Vt)/(Is*Rs*x)

6)
     Now  Newton's iteration  formula is :

             
                       x  = x - f(x) / f '(x)    ,      where   f '(x)  == d f(x) / dx  .

7)
    For  this  example  :

                    f(x) =  x = -((Gm*n*Rs*Vt+n*Vt)*log(x)-Vs-Is*Rs)/(Is*Rs),Is*Rs,1)

    and

                  f '(x) =  1 = -(Gm*n*Rs*Vt+n*Vt)/(Is*Rs*x)


8)  
     Therefore  Newton's  iteration formula for this example is :


        x = x - (   -((Gm*n*Rs*Vt+n*Vt)*log(x)-Vs-Is*Rs)/(Is*Rs),Is*Rs,1) - x )/( -(Gm*n*Rs*Vt+n*Vt)/(Is*Rs*x)-1)


9)      
     Simplifying  (8)


     x = x -( (-Ids*Rs-Vs)*x + Ids*Rs*x*x + (n+Gm*n*Rs)*Vt*x*log(x) ) /

     ( (n + Gm*n*Rs)*Vt+Ids*Rs*x )


Substitute

    u = Gm*n*Rs*Vt+n*Vt
   vr = Ids*Rs

    x = x-( -(Vs+vr)*x + vr*x*x + u*x*log(x) )/(vr*x+u))


    In  this logarithmic format overflow , and possibly underflow , is avoided .


10 )
        We need to be able to convert  x back to i  , to do this we use the inverse of the original
     substitution  :


          log(x) = (Vs-i*Rs)/(n*Vt)  

     
          Solving  for  i  ,


            i  = - ( log(x)*(n*Vt) - Vs  ) / Rs

Substitute

           Pt = n*Vt

            i  = - ( log(x)*Pt - Vs  ) / Rs

   Between successive iterations of Newton's formula
 the previous value of i is compared with the present,
 if the absolute difference is less than a predefined
 tolerance , Pd , then the iteration stops .

   Vs is a complex voltage source , possibly equivalent
 to a multi phase voltage source .


  This is a basic diode model and doesn't include the
 effects of diode junction capacitance .


  For small voltages a purely exponential representation
 of the diode model may converge quicker than the
 logarithmic and still remain accurate .

 The logarithmic model has been implemented as a BASIC
language program and compared with data from  a SPICE
simulation , for a real voltage source , there is
good agreement .
 For a Complex voltage source , the few samples
generated from the BASIC program are in good agreement
with those from  MAXIMA  CAS .


 }






LnDioGH{
;
;
;                     Complex Voltage - Complex Current
;                           Diode Characteristics .
;
;                          for 1N4148 silicon type .
;                               Level 1 model .
;
;                               at 25 degrees C
;
;
 Pd = (10^-13),
 Gm = 9.4*(10^-13),
Ids = 2.52*(10^-09),
 Rs = 0.968,
  n = 1.752,
 Vt = 0.025,
  u = Gm*n*Rs*Vt+n*Vt,
 Pt = n*Vt,
 vr = Ids*Rs,
 Vs = Pixel,
  x = (0.1,0),
  x = x-((u*x*log(x)+vr*x*x-(Vs+vr)*x)/(vr*x+u)),
  y = -(Pt*log(x)-Vs)/Rs,
tol = (1,0):
  u = y;
  x = x-((u*x*log(x)+vr*x*x-(Vs+vr)*x)/(vr*x+u));
  y = -(Pt*log(x)-Vs)/Rs,
tol = |u-y|,
tol > Pd
}







comment {


    The floating point option needs to be selected ,

    512 iterations , or  more , should be selected .

    Also a logarithmic palette  .

    
    Minibrot structures aren't immediately apparent at
  the default parameter settings .

    A parameter setting of :

         xmin    - 0.005770310598      xmax   - 0.005666943901
         ymin      0.000516417395       ymax     0.000594104392


    shows embedded mimibrots and spirals , wether this
  is relevant in a real diode is unknown .


    You  might be able to locate mimibrots elsewhere on
the  map .


          Ids   ,   Rs   ,   n

  are the parameters that define the diode characteristics ,
  these can be assigned values from the parameters p1 , p2 , p3 .





  
}
