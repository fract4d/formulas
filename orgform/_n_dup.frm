

N11 (xyaxis) {
  z=pixel:
  z=1/cosh(1/(z*pixel))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N12 (xyaxis) {
  z=pixel:
  z=1/cosh(1/(z*pixel))*pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N16 (xaxis) {
  z=pixel:
  z=(sin(z*z*sin(1/(z*z))))*pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N2_1 (xaxis) {
  z=pixel:
  z=sin(sinh(z*pixel))*pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N2_2 (xaxis) {
  z=pixel:
  z=sin(sinh(z*pixel))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3 (xyaxis) {
  z=pixel:
  z=1/sin(1/((z^z)*pixel))
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3_1 (xyaxis) {
  z=pixel:
  z=1/sin(1/((z^z)*pixel)) + pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N3_2 (xyaxis) {
  z=pixel:
  z=1/sin(1/((z^z)*pixel)) * pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N4 (xaxis) {
  z=pixel:
  z=(1/sin(1/(z*pixel)))*pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N5 (xaxis) {
  z=pixel:
  z=(1/sin(1/(z*pixel)))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N6 (xyaxis) {
  z=pixel:
  z=(1/cos(1/(z*z)))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N7 (xyaxis) {
  z=pixel:
  z=(1/cos(1/(z*pixel)))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N8 (xaxis) {
  z=pixel:
  z=1/sinh(1/(z*pixel))
  |z|<=4 
  ;SOURCE: formtype.frm
}


N9 (xyaxis) {
  z=pixel:
  z=1/sinh(1/(z*pixel))+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


N_n (xyaxis) {
  z=pixel:
  z=(1/sin(1/((z^n)*pixel)))
  |z|<=4 
  ;SOURCE: formtype.frm
}


N_n1 (xyaxis) {
  z=pixel:
  z=(1/sin(1/((z^n)*pixel)))*pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


Natura {; Michael Theroux [71673,2767]
        ; Fix and generalization by  Ron Barnett [70153,1233]   
        ; phi yoni
        ; try p1 = 2.236067977 for the golden mean
  z = pixel:
  z = z*z*z + ((p1 + 1)/2)
  |z| <= 4
  ;SOURCE: fract002.frm
}


Newton (XAXIS) {; v7.x - Handles non-integer and negative values
                ; This creates a fractal by solving the equation:
                ; Z^p -1 = 0.   p1 should be >1 or <0, float=yes
  z = pixel, pm1 = p1-1 :
  oldz = z
  z =  (pm1 * (z ^ p1) + 1) / (p1 * z ^ pm1)
  |(z-oldz)|>=|0.01|
  ;SOURCE: parser.frm
}


Newton4 (XYAXIS) {; Mark Peterson
                  ; try p1 = 3 and p2 = 4
  z  = pixel
  Root = 1:
  z3 = z*z*z
  z4 = z3 * z
  z  = (p1 * z4 + Root) / (p2 * z3)
  0.004 <= |z4 - Root|
  ;SOURCE: improved.frm
}


NewtonSinExp (XAXIS) {; Chris Green
   ; try fn1 = exp, fn2 = sin, fn3 = cos, p1 = 1, p2 = 0.0001
   ; note--use floating point
  z  = pixel:
  z1 = fn1(z)
  z2 = fn2(z)+z1-1
  z  = z-p1*z2/(fn3(z)+z1)
  p2 < |z2|
  ;SOURCE: improved.frm
}


No_name (xaxis) {
  z=pixel:
  z+z*z+(1/z*z)+pixel
  |z|<=4 
  ;SOURCE: formtype.frm
}


No_Name {
  z = c = pixel:
  z = p1 * cosh(z * z * z  * z * z * z) + c
  |z| <= 4
  ;SOURCE: 97msg.frm
}

