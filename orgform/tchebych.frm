;========================================================================
;Date:    Mon, 10 Feb 1992 13:10:12 EST
;From: "Bruno"
;Subject: MORE .par and .frm
;X-Topic: Entry #3185 of LISTS.FRAC-L
;To: "LISTS.FRAC-L.3185"
;
;Posted on 10 Feb 1992 at 12:24:22 by BrownVM Mailer (103837)
;
;MORE .par and .frm
;
;Date:         Mon, 10 Feb 1992 08:18:36 GMT
;Reply-To:     'FRACTAL' discussion list <FRAC-L@GITVM1.BITNET>
;From:         Rob den Braasem <rdb@KTIBV.UUCP>
;
;Here are a group of files with formulas derived from a book of Roger Stevens
;
;First the formmats file and then the par file.
;
;
;--------------------------------------------------------------------
;{
;  ADVANCE FRACTAL PROGRAMMING IN C
;  by Roger Stevens.
;
;  I changed them in a Julia and Mandelbrot type fractal generatoren.
;  The Graphical Gnome (rdb@ktibv)
;
;}
;
;{
;   JULIA TYPE FRACTALS
;}
;

J_TchebychevT2 {
   c = pixel, z = P1:
   z = c*(2*z*z-1),
   |z|<100
}

J_TchebychevT3 {   ;
   c = pixel, z = P1:
   z = c*z*(4*z*z-3),
   |z|<100
}

J_TchebychevT4 {
   c = pixel, z = P1:
   z = c*(z*z*(8*z*z+8)+1),
   |z|<100
}

J_TchebychevT5 {    
   c = pixel, z = P1:
   z = c*(z*(z*z*(16*z*z-20)+5)),
   |z|<100
}

J_TchebychevT6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}

J_TchebychevT7 {     
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
   |z|<100
}

J_TchebychevC2 {
   c = pixel, z = P1:
   z = c*(z*z-2),
   |z|<100
}

J_TchebychevC3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-3),
   |z|<100
}

J_TchebychevC4 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z-4)+2),
   |z|<100
}

J_TchebychevC5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z-5)+5),
   |z|<100
}

J_TchebychevC6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-6)+9)-2),
   |z|<100
}

J_TchebychevC7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
   |z|<100
}


J_TchebychevU2 {
   c = pixel, z = P1:
   z = c*(4*z*z-1),
   |z|<100
}

J_TchebychevU3 {   ;
   c = pixel, z = P1:
   z = c*z*(8*z*z-4),
   |z|<100
}

J_TchebychevU4 {
   c = pixel, z = P1:
   z = c*(z*z*(16*z*z-12)+1),
   |z|<100
}

J_TchebychevU5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(32*z*z-32)+6),
   |z|<100
}

J_TchebychevU6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
   |z|<100
}

J_TchebychevU7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
   |z|<100
}

J_TchebychevS2 {
   c = pixel, z = P1:
   z = c*(z*z-1),
   |z|<100
}

J_TchebychevS3 {   ;
   c = pixel, z = P1:
   z = c*z*(z*z-2),
   |z|<100
}

J_TchebychevS4 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z-3)+1),
   |z|<100
}

J_TchebychevS5 {    ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z-4)+3),
   |z|<100
}

J_TchebychevS6 {
   c = pixel, z = P1:
   z = c*(z*z*(z*z*(z*z-5)+6)-1),
   |z|<100
}

J_TchebychevS7 {     ;
   c = pixel, z = P1:
   z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
   |z|<100
}

J_Laguerre2 {
   c = pixel, z = P1:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100

}

J_Laguerre3 {
   c = pixel, z = P1:
   z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
   |z| < 100
}

J_Laguerre4 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
   |z| < 100
}

J_Laguerre5 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z * (-z +25) -200) +600) -600) + 120 ) / 120 + c,
   |z| < 100
}

J_Laguerre6 {
   c = pixel, z = P1:
   z = (z * ( z * ( z * ( z*(z*(z -36) +450) -2400) + 5400)-4320) + 720 ) / 720
+ c,
   |z| < 100
}

J_Lagandre2 {
   c = pixel, z = P1:
   z = (3 * z*z - 1) / 2 + c
   |z| < 100
}

J_Lagandre3 {
   c = pixel, z = P1:
   z = z * (5 * z*z - 3) / 2 + c
   |z| < 100
}

J_Lagandre4 {
   c = pixel, z = P1:
   z = (z*z*(35 * z*z - 30) + 3) / 8 + c
   |z| < 100
}

J_Lagandre5 {
   c = pixel, z = P1:
   z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
   |z| < 100
}

J_Lagandre6 {
   c = pixel, z = P1:
   z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
   |z| < 100
}

J_Lagandre7 {
   c = pixel, z = P1:
   z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
   |z| < 100
}

{
 MANDELBROT TYPE FRACTALS
}

M_TchebychevT2 {
   c = P1, z = Pixel:
   z = c*(2*z*z-1),
   |z|<100
}

M_TchebychevT3 {   ;
   c = P1, z = Pixel:
   z = c*z*(4*z*z-3),
   |z|<100
}

M_TchebychevT4 {
   c = P1, z = Pixel:
   z = c*(z*z*(8*z*z+8)+1),
   |z|<100
}

M_TchebychevT5 {    ;
   c = P1, z = Pixel:
   z = c*(z*(z*z*(16*z*z-20)+5)),
   |z|<100
}

M_TchebychevT6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
   |z|<100
}

M_TchebychevT7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
   |z|<100
}

M_TchebychevC2 {
   c = P1, z = Pixel:
   z = c*(z*z-2),
   |z|<100
}

M_TchebychevC3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-3),
   |z|<100
}

M_TchebychevC4 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z-4)+2),
   |z|<100
}

M_TchebychevC5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z-5)+5),
   |z|<100
}

M_TchebychevC6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(z*z-6)+9)-2),
   |z|<100
}

M_TchebychevC7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
   |z|<100
}


M_TchebychevU2 {
   c = P1, z = Pixel:
   z = c*(4*z*z-1),
   |z|<100
}

M_TchebychevU3 {   ;
   c = P1, z = Pixel:
   z = c*z*(8*z*z-4),
   |z|<100
}

M_TchebychevU4 {
   c = P1, z = Pixel:
   z = c*(z*z*(16*z*z-12)+1),
   |z|<100
}

M_TchebychevU5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(32*z*z-32)+6),
   |z|<100
}

M_TchebychevU6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
   |z|<100
}

M_TchebychevU7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
   |z|<100
}

M_TchebychevS2 {
   c = P1, z = Pixel:
   z = c*(z*z-1),
   |z|<100
}

M_TchebychevS3 {   ;
   c = P1, z = Pixel:
   z = c*z*(z*z-2),
   |z|<100
}

M_TchebychevS4 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z-3)+1),
   |z|<100
}

M_TchebychevS5 {    ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z-4)+3),
   |z|<100
}

M_TchebychevS6 {
   c = P1, z = Pixel:
   z = c*(z*z*(z*z*(z*z-5)+6)-1),
   |z|<100
}

M_TchebychevS7 {     ;
   c = P1, z = Pixel:
   z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
   |z|<100
}

M_Laguerre2 {
   c = P1, z = Pixel:
   z = (z*(z - 4) +2 ) / 2 + c,
   |z| < 100

}

M_Laguerre3 {
   c = P1, z = Pixel:
   z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
   |z| < 100
}

M_Laguerre4 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
   |z| < 100
}

M_Laguerre5 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z * (-z +25) -200) +600) -600) + 120 ) / 120 + c,
   |z| < 100
}

M_Laguerre6 {
   c = P1, z = Pixel:
   z = (z * ( z * ( z * ( z*(z*(z -36) +450) -2400) + 5400)-4320) + 720 ) / 720
+ c,
   |z| < 100
}

M_Lagandre2 {
   c = P1, z = Pixel:
   z = (3 * z*z - 1) / 2 + c
   |z| < 100
}

M_Lagandre3 {
   c = P1, z = Pixel:
   z = z * (5 * z*z - 3) / 2 + c
   |z| < 100
}

M_Lagandre4 {
   c = P1, z = Pixel:
   z = (z*z*(35 * z*z - 30) + 3) / 8 + c
   |z| < 100
}

M_Lagandre5 {
   c = P1, z = Pixel:
   z = z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c
   |z| < 100
}

M_Lagandre6 {
   c = P1, z = Pixel:
   z = (z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c
   |z| < 100
}

M_Lagandre7 {
   c = P1, z = Pixel:
   z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c
   |z| < 100
}

test{
  z=pixel,c=p1:
   c = P1, z = Pixel:
   z = z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / (16 * (z+c))
   |z| < 100
}
