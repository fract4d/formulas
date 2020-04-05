  {
======================================================================== }
  {              File distributed with FRAC'Cetera Vol 2 Iss 8             
 }
 
{==========================================================================
   =  Downloaded from CIS 13 May 93 by Jon Horner (FRAC'Cetera) as part of 
=
   =  FRXTRA.ZIP      Author: Dan Goldwater       CIS: 71320,675           
=
   =  F'names,  where present,  are  FRAC'Cetera  created variations or    
=
   =  derivatives based, sometimes quite loosely, on the author's originals
=
  
==========================================================================}

!_Press_F2_!     {; There is text in this formula file.  Shell to DOS with
                  ; the <d> key and use a text reader to browse the file.
                 }

;========================================================================
; Date:         Mon, 10 Feb 1992 08:18:36 GMT
; Reply-To:     'FRACTAL' discussion list <FRAC-L@GITVM1.BITNET>
; From:         Rob den Braasem <rdb@KTIBV.UUCP>
;
; Here are a group of formulas derived from Roger Stevens' book [1].
;
; I changed them in a Julia and Mandelbrot type fractal generatoren.
; The Graphical Gnome (rdb@ktibv)
;--------------------------------------------------------------------
; Notes from FRAC'Cetera Editor:
;
; PROBLEM 1: The Graphical Gnome wrote the Julias with a Mandel-form
; initialization i.e. z = p1, c = pixel, and vice versa.  We have changed
; them to their correct initializations.
;
; PROBLEM 2: The Gnome spells it LaGaNDRE - Stevens [1], Peitgen, Jurgens
; and Saupe [2], and other references, spell it LeGeNDRE.  The e's have it.
;
; Comment - changing c* to c+ in the Tchebychev's doesn't seem to produce
; any other worthwhile fractals.  See comments in Stevens [1].
;
; We have also indicated where the formulas require p1>0, and used XAXIS
; and ORIGIN symmetry where appropriate.
;---------------------------------------------------
; [1] _Advanced Fractal Programming in C_
; [2] _Chaos and Fractals, New Frontiers in Science_
;

}
;The above are original comments preceeding newtcheb.frm which is apparently no
;longer available. Thanks to Gerge Martin for providing them. Otherwise
;I reconstructed this formula file from ORGFORM where they were filed under J and
;M duplicate formulas respectively.  There is an unfortunate duplication of names
;in this formula file with those in tchebych.frm, although the formulas differ in
;detail, particularly in the first line, where in tchebych.frm the assignments
;are reversed.  To avoid confusion I renamed the formulas by substituting "new" ;for the last 3 letters of the original names, and renamed the formula file itself
;to newtchb2.frm (Gedeon Peteri)

J_Laguenew2 {
  z = pixel, c = p1 :
  z = (z*(z - 4) +2 ) / 2 + c,
  |z| <= 100
  }

J_Laguenew3 {
  z = pixel, c = p1 :
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
  |z| <= 100
  }

J_Laguenew4 {
  z = pixel, c = p1 :
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
  |z| <= 100
  }

J_Laguenew5 {
  z = pixel, c = p1 :
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120+c,
  |z| <= 100
  }

J_Laguenew6 {
  z = pixel, c = p1 :
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720 )/720 + c,
  |z| <= 100
  }

J_TchebycnewC2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z-2),
  |z|<=100
  }

J_TchebycnewC3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z-3),
  |z|<=100
  }

J_TchebycnewC4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z-4)+2),
  |z|<=100
  }

J_TchebycnewC5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z-5)+5),
  |z|<=100
  }

J_TchebycnewC6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(z*z-6)+9)-2),
  |z|<=100
  }

J_TchebycnewC7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
  |z|<=100
  }

J_TchebycnewS2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z-1),
  |z|<=100
  }

J_TchebycnewS3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z-2),
  |z|<=100
  }

J_TchebycnewS4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z-3)+1),
  |z|<=100
  }

J_TchebycnewS5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z-4)+3),
  |z|<=100
  }

J_TchebycnewS6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(z*z-5)+6)-1),
  |z|<=100
  }

J_TchebycnewS7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
  |z|<=100
  }

J_TchebycnewT2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(2*z*z-1),
  |z|<=100
  }

J_TchebycnewT3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(4*z*z-3),
  |z|<=100
  }

J_TchebycnewT4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(8*z*z+8)+1),
  |z|<=100
  }

J_TchebycnewT5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*(z*z*(16*z*z-20)+5)),
  |z|<=100
  }

J_TchebycnewT6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
  |z|<=100
  }

J_TchebycnewT7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
  |z|<=100
  }

J_TchebycnewU2 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(4*z*z-1),
  |z|<=100
  }

J_TchebycnewU3 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(8*z*z-4),
  |z|<=100
  }

J_TchebycnewU4 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(16*z*z-12)+1),
  |z|<=100
  }

J_TchebycnewU5 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(32*z*z-32)+6),
  |z|<=100
  }

J_TchebycnewU6 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
  |z|<=100
  }

J_TchebycnewU7 (ORIGIN) {; p1 must not = 0
  z = pixel, c = p1 :
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
  |z|<=100
  }

M_Laguenew2 (XAXIS) {
  z = p1, c = pixel :
  z = (z*(z - 4) +2 ) / 2 + c,
  |z| <=p2
  }

M_Laguenew3 (XAXIS) {
  z = p1, c = pixel :
  z = (z*(z*(-z + 9) -18) + 6 ) / 6 + c,
  |z| <=100
  }

M_Laguenew4 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z = (z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c,
  |z| <=100
  }

M_Laguenew5(XAXIS) {; float=yes
  z = p1, c = pixel :
  z=(z*(z*(z*(z*(-z+25)-200)+600)-600)+120) / 120 + c,
  |z| <=100
  }

M_Laguenew6 (XAXIS) {; float=yes
  z = p1, c = pixel :
  z=(z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720) / 720 + c,
  |z| <=100
  }

M_TchebycnewC2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z-2),
  |z|<=100
  }

M_TchebycnewC3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z-3),
  |z|<=100
  }

M_TchebycnewC4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z-4)+2),
  |z|<=100
  }

M_TchebycnewC5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z-5)+5),
  |z|<=100
  }

M_TchebycnewC6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(z*z-6)+9)-2),
  |z|<=100
  }

M_TchebycnewC7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(z*z-7)+14)-7),
  |z|<=100
  }

M_TchebycnewS2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z-1),
  |z|<=100
  }

M_TchebycnewS3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z-2),
  |z|<=100
  }

M_TchebycnewS4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z-3)+1),
  |z|<=100
  }

M_TchebycnewS5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z-4)+3),
  |z|<=100
  }

M_TchebycnewS6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(z*z-5)+6)-1),
  |z|<=100
  }

M_TchebycnewS7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(z*z-6)+10)-4),
  |z|<=100
  }

M_TchebycnewT2 (XAXIS) {
  z = p1, c = pixel :
  z = c*(2*z*z-1),
  |z|<=100
  }

M_TchebycnewT3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(4*z*z-3),
  |z|<=100
  }

M_TchebycnewT4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(8*z*z+8)+1),
  |z|<=100
  }

M_TchebycnewT5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*(z*(z*z*(16*z*z-20)+5)),
  |z|<=100
  }

M_TchebycnewT6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(32*z*z-48)+18)-1),
  |z|<=100
  }

M_TchebycnewT7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(64*z*z-112)+56)-7),
  |z|<=100
  }

M_TchebycnewU2 (XAXIS) {
  z  =p1, c = pixel :
  z = c*(4*z*z-1),
  |z|<=100
  }

M_TchebycnewU3 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(8*z*z-4),
  |z|<=100
  }

M_TchebycnewU4 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(16*z*z-12)+1),
  |z|<=100
  }

M_TchebycnewU5 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(32*z*z-32)+6),
  |z|<=100
  }

M_TchebycnewU6 (XAXIS) {
  z = p1, c = pixel :
  z = c*(z*z*(z*z*(64*z*z-80)+24)-1),
  |z|<=100
  }

M_TchebycnewU7 (XAXIS) {; p1 must not = 0
  z = p1, c = pixel :
  z = c*z*(z*z*(z*z*(128*z*z-192)+80)-8),
  |z|<=100
  }
