These FRM's require Fractint 19.5 or higher.
Screen resolution of 1024x768 or higher should be used.
For FRM's with slices, screen resolution should be at least 1280x1024.
The slice FRM's are not intended to be either pseudo high color or
pseudo true color. Some of the FRM's are from an older version of
REB008.FRM which have been modified to comply with the new 19.5 parser.
Email: reb01@gnn.com, 70153.1233@compuserve.com or ron_barnett@msn.com
Web Page: http://members.gnn.com/reb01/hidden.htm
Some examples with high slice numbers can be viewed on my web page.

MandJulia   {; p3 will shift the julia set wrt the mandelbrot set
	; p2 is for the Julia value
	; Ron Barnett, 1996   
	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2:
	z=z*z+c, |z|<=4}

IkeJulia   {; p3 will shift the julia set wrt the ikenaga set
	; p2 is for the Julia value
	; Ron Barnett, 1996   
	z = whitesq*((1-pixel)/3)^0.5+(whitesq==0)*(pixel+p3), 
	c = whitesq*p1*pixel + (whitesq==0)*p2:
	z=z*z*z+(c-1)*z-c, |z|<=4}
      
MandelIke   {; p3 will shift the ikenaga set wrt the mandelbrot set
	; Ron Barnett, 1996   
	z = pixel+(whitesq==0)*p3,
	c = whitesq*p1*pixel + (whitesq==0)*p2*pixel:
	z=whitesq*(z*z*z+(c-1)*z-c) + (whitesq==0)*(z*z+c), |z|<=4}
					    
TwoIkes   {; p3 will shift the two ikenaga sets wrt to each other
	; Ron Barnett, 1996   
	z = p1*whitesq*(pixel+p3)+p2*(whitesq==0)*((1-pixel)/3)^0.5,
	c = pixel:
	z=z*z*z+(c-1)*z-c, |z|<=4}
					    
TwoMands   {; p3 will shift the two mandelbrot sets wrt to each other
	; Ron Barnett, 1996   
	z = c = pixel+(whitesq==0)*p3:
	z=whitesq*(z^p1+c)+(whitesq==0)*(z^p2+c), |z|<=4}

AnotherTwoIkes   { ; p3 will shift the two ikenaga sets wrt to each other
	; Ron Barnett, 1996   
	z =whitesq*((1-pixel)/p1)^(1/(p1-1))+(whitesq==0)*((1-pixel-p3*(whitesq==0))/p2)^(1/(p2-1)):
	z=whitesq*(z^p1+(pixel-1)*z-pixel)+(whitesq==0)*(z^p2+(pixel-1)*z-pixel), |z|<=4}

PHC-Frame-Robert {; Ron Barnett, 1996
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
	z=z*z*z/5+z*z+c, |z|<=100}

PHC-Ikenaga01 { ; Ron Barnett, 1996
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
       z=z*z*z+(c-1)*z-c, |z|<=100}

PHC-Ikenaga02 {; Ron Barnett, 1996
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)),
	z=conj(z),c=conj(c):
	z=z*z*z+(c-1)*z-c, |z|<=100}

PHC-Ikenaga03 {; Ron Barnett, 1996
	z=whitesq*(real(pixel)-flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)-flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)-flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)-flip(imag(pixel)*p1)):
	z=z*z*z+(c-1)*z-c, |z|<=100}

PHC-Spider01 {; Ron Barnett, 1996
	z=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
	z=z*z+c,
	c=c/2+z, |z|<=100}

PHC-Manowar01 {; Ron Barnett, 1996
	z=z1=whitesq*(real(pixel)+flip(imag(pixel)*p1))+(whitesq==0)*(p1*real(pixel)+flip(imag(pixel))),
	c=whitesq*(p2+p1*real(pixel)+flip(imag(pixel)))+(whitesq==0)*(p2+real(pixel)+flip(imag(pixel)*p1)):
	z=z*z+z1+c,
	z1=z, |z|<=100}

PHC-PHOENIX {; Ron Barnett, 1996        
	z = (whitesq==0)*flip(pixel)+whitesq*(pixel+p3);
	x1 = 0;
	y = 0:
	x1 = z*z + P1 + P2*y;
	y = (whitesq==0)*z+whitesq*flip(z);
	z = x1; |z|<= 50
   }

MandKaleido { ; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      2 slices       1    1    2
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   r = cr - p3 * trunc((cr+0.10) / p3)
   tpi = 8*atan(1)
   c = (sin(1/p3*tpi) + flip(cos(1/p3*tpi)))*(r == 0) 
   c1 = (sin(2/p3*tpi) + flip(cos(2/p3*tpi))) * (r == 1)
   c2 = (sin(3/p3*tpi) + flip(cos(3/p3*tpi))) * (r == 2) 
   c3 = (sin(4/p3*tpi) + flip(cos(4/p3*tpi))) * (r == 3)
   c4 = (sin(5/p3*tpi) + flip(cos(5/p3*tpi))) * (r == 4) 
   c5 = (sin(6/p3*tpi) + flip(cos(6/p3*tpi))) * (r == 5)
   c6 = (sin(7/p3*tpi) + flip(cos(7/p3*tpi))) * (r == 6)
   c7 = (sin(8/p3*tpi) + flip(cos(8/p3*tpi))) * (r == 7)
   c8 = (sin(9/p3*tpi) + flip(cos(9/p3*tpi))) * (r == 8)
         c =z = pixel * (c + c1 + c2 + c3 + c4 + c5 + c6 + c7 + c8) :
   z = z * z + c
   |z| <= 4
  }

4DslSJMand_Off {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3);
   space = imag(p3);
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = r == 0 +  (rp3-1)/rp3 * (r == 1)
   rot = rot + (rp3-2)/rp3 * (r == 2) +  (rp3-3)/rp3 * (r == 3)
   rot = rot + (rp3-4)/rp3 * (r == 4) +  (rp3-5)/rp3 * (r == 5) 
   rot = rot + (rp3-6)/rp3 * (r == 6) +  (rp3-7)/rp3 * (r == 7) 
   rot = rot +(rp3-8)/rp3 * (r == 8)
   shift = space*r + flip(space*r)
   z=real(pixel+shift)+flip(imag(pixel+shift)*rot),
   c=rot*real(pixel+shift)+flip(imag(pixel+shift)):
   z=z*z+c, |z|<=48}

4DslSJMand_Lin {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = r == 0 +  (rp3-1)/rp3 * (r == 1)
   rot = rot + (rp3-2)/rp3 * (r == 2) +  (rp3-3)/rp3 * (r == 3)
   rot = rot + (rp3-4)/rp3 * (r == 4) +  (rp3-5)/rp3 * (r == 5) 
   rot = rot + (rp3-6)/rp3 * (r == 6) +  (rp3-7)/rp3 * (r == 7) 
   rot = rot +(rp3-8)/rp3 * (r == 8)
   shift = r*space
   z=real(pixel+shift)+flip(imag(pixel+shift)*rot),
   c=rot*real(pixel+shift)+flip(imag(pixel+shift)):
   z=z*z+c, |z|<=48}

4DslSJMand_Rot {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   hpi = atan(1)
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = r == 0 +  (rp3-1)/rp3 * (r == 1)
   rot = rot + (rp3-2)/rp3 * (r == 2) +  (rp3-3)/rp3 * (r == 3)
   rot = rot + (rp3-4)/rp3 * (r == 4) +  (rp3-5)/rp3 * (r == 5) 
   rot = rot + (rp3-6)/rp3 * (r == 6) +  (rp3-7)/rp3 * (r == 7) 
   rot = rot +(rp3-8)/rp3 * (r == 8)
   xr = cos((1-rot)*hpi), yr = sin((1-rot)*hpi)
   shift = xr + flip(yr)
   loc = space*r
   z=real(pixel*shift-loc)+flip(imag(pixel*shift-loc)*rot),
   c=rot*real(pixel*shift-loc)+flip(imag(pixel*shift-loc)):
   z=z*z+c, |z|<=48}

4Dsl3DMand_Off1 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = 0*(r == 0) +  1/rp3 * (r == 1)
   rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
   rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
   rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
   rot = rot +8/rp3 * (r == 8)
   shift = space*r + flip(space*r)
   rot = flip(rot)
   z=real(pixel+shift)+flip(imag(pixel+shift)),
   c=rot+real(pixel+shift)+flip(imag(pixel+shift)):        
   z=z*z+c, |z|<=48}

4Dsl3DMand_Off2 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = 0*(r == 0) +  1/rp3 * (r == 1)
   rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
   rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
   rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
   rot = rot +8/rp3 * (r == 8)
   shift = space*r + flip(space*r)
   rot = flip(rot)
   z=(1-rot)*real(pixel+shift)+flip(imag(pixel+shift)),
   c=rot+real(pixel+shift)+flip(imag(pixel+shift)*(1-rot)):        
   z=z*z+c, |z|<=48}

4Dsl3DMand_Lin1 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = 0*(r == 0) +  1/rp3 * (r == 1)
   rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
   rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
   rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
   rot = rot +8/rp3 * (r == 8)
   shift = r*space
   rot = flip(rot)
   z=real(pixel+shift)+flip(imag(pixel+shift)),
   c=rot+real(pixel+shift)+flip(imag(pixel+shift)):        
   z=z*z+c, |z|<=48}

4Dsl3DMand_Lin2 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = 0*(r == 0) +  1/rp3 * (r == 1)
   rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
   rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
   rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
   rot = rot +8/rp3 * (r == 8)
   shift = r*space
   rot = flip(rot)
   z=(1-rot)*real(pixel+shift)+flip(imag(pixel+shift)),
   c=rot+real(pixel+shift)+flip(imag(pixel+shift)*(1-rot)):        
   z=z*z+c, |z|<=48}

4Dsl3DMand_Rot1 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   hpi = atan(1)
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = 0*(r == 0) +  1/rp3 * (r == 1)
   rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
   rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
   rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
   rot = rot +8/rp3 * (r == 8)
   xr = cos(rot*hpi), yr = sin(rot*hpi)
   shift = xr + flip(yr)
   loc = space*r
   rot = flip(rot)
   z=real(pixel*shift-loc)+flip(imag(pixel*shift-loc)),
   c=rot+real(pixel*shift-loc)+flip(imag(pixel*shift-loc)):        
   z=z*z+c, |z|<=48}

4Dsl3DMand_Rot2 {; Ron Barnett [70153,2133], 1996
   ; suggested values:  p1   p2   p3
   ;      3 slices       1    2    3
   ;      4 slices       3    2    4
   ;      5 slices       4    2    5
   ;      6 slices       5    4    6
   ;      7 slices       5    4    7
   ;      8 slices       6    5    8
   ;      9 slices       6    5    9
   ;  Use imag portion of p3 to set slice spacing   
   hpi = atan(1)
   cr = p1*real(scrnpix) + p2*imag(scrnpix)
   rp3 = real(p3)
   space = imag(p3)
   r = cr - rp3 * trunc((cr+0.10) / rp3)
   rot = 0*(r == 0) +  1/rp3 * (r == 1)
   rot = rot + 2/rp3 * (r == 2) +  3/rp3 * (r == 3)
   rot = rot + 4/rp3 * (r == 4) +  5/rp3 * (r == 5) 
   rot = rot + 6/rp3 * (r == 6) +  7/rp3 * (r == 7) 
   rot = rot +8/rp3 * (r == 8)
   xr = cos(rot*hpi), yr = sin(rot*hpi)
   shift = xr + flip(yr)
   loc = space*r
   rot = flip(rot)
   z=(1-rot)*real(pixel*shift-loc)+flip(imag(pixel*shift-loc)),
   c=rot+real(pixel*shift-loc)+flip(imag(pixel*shift-loc)*(1-rot)):        
   z=z*z+c, |z|<=48}

