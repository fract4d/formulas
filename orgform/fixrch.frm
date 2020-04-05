N1(XYAXIS) {    z=pixel:  z=1/sin(1/(z*pixel)) ,             |z|<=4
   } try maxiter=35 then 200
N_n(XYAXIS) {   z=pixel:  z=(1/sin(1/(z^2*pixel))) ,         |z|<=4
   } n integer
N_n1(XYAXIS) {  z=pixel:  z=(1/sin(1/(z^2*pixel)))*pixel ,   |z|<=4
   }
N2(XAXIS){      z=pixel:  z=(1/sin(sinh(z*pixel)))*pixel ,   |z|<=4
   }
N2_1(XYAXIS){   z=pixel:  z=sin(sinh(z*pixel))*pixel   ,     |z|<=4
   }
N2_2(XYAXIS){   z=pixel:  z=sin(sinh(z*pixel))+pixel   ,     |z|<=4
   }
N3(XAXIS)  {    z=pixel:  z=1/sin(1/((z^z)*pixel))     ,     |z|<=4
   }
N3_1(XAXIS) {   z=pixel:  z=1/sin(1/((z^z)*pixel))+pixel,    |z|<=4
   }
N3_2(XAXIS) {   z=pixel:  z=1/sin(1/((z^z)*pixel))*pixel,    |z|<=4
   }
N3sh(XAXIS)   { z=pixel:  z=1/sinh(1/((z^z)*pixel))     ,    |z|<=4
   }
N3_1sh(XAXIS)  {z=pixel:  z=1/sinh(1/((z^z)*pixel))+pixel,   |z|<=4
   }
N3_2sh(XAXIS)  {z=pixel:  z=1/sinh(1/((z^z)*pixel))*pixel,   |z|<=4
   }
N3_1ch(XAXIS) { z=pixel:  z=1/cosh(1/((z^z)*pixel))+pixel,   |z|<=4
   }
N3_2ch(XAXIS) { z=pixel:  z=1/cosh(1/((z^z)*pixel))*pixel,   |z|<=4
   }
N4(XYAXIS) {    z=pixel:  z=(1/sin(1/(z*pixel)))*pixel ,     |z|<=4
   }
N5(XYAXIS) {    z=pixel:  z=(1/sin(1/(z*pixel)))+pixel ,     |z|<=4
   }
N6(XAXIS) {     z=pixel:  z=(1/cos(1/(z*z)))+pixel ,         |z|<=4
   }
N7(XAXIS) {     z=pixel:  z=(1/cos(1/(z*pixel)))+pixel ,     |z|<=4
   }
N8(XYAXIS) {    z=pixel:  z=1/sinh(1/(z*pixel)) ,            |z|<=4
   }
N9(XAXIS) {     z=pixel:  z=1/sinh(1/(z*pixel))+pixel,       |z|<=4
   }
N10(XYAXIS) {   z=pixel:  z=1/sinh(1/(z*pixel))*pixel,       |z|<=4
   }
N11(XYAXIS) {   z=pixel:  z=1/cosh(1/(z*pixel)) ,            |z|<=4
   }
N12(XAXIS)  {   z=pixel:  z=1/cosh(1/(z*pixel))+pixel,       |z|<=4
   }
N13(XYAXIS) {   z=pixel:  z=1/cosh(1/(z*pixel))*pixel,       |z|<=4
   }
N15(XAXIS) {    z=pixel:  z=(sin(z*z*sin(1/(z*z))))+pixel,   |z|<=4
   }
N16(XYAXIS) {   z=pixel:  z=(sin(z*z*sin(1/(z*z))))*pixel,   |z|<=4
   }
ducks(xaxis) {  z=pixel,t=1+pixel:   z=sqr(z)+t,             |z|<=4
   }
It seems not so ugly at first glance and lot of corners to zoom in.
try this:
 Corners              X                  Y
top-left         -1.178372          -0.601683
bottom-right     -0.978384          -0.751678
center           -1.07838           -0.67668

NxA(XAXIS)   { z=pixel:   z=sin(z^pixel)  ,                  |z|<=4
   }
NxB(XAXIS)   { z=pixel:   z=sin(z^pixel)*pixel  ,            |z|<=4
   }
NxE(XAXIS)   { z=pixel:   z=sinh(z^pixel)  ,                 |z|<=4
   }
NxF(XAXIS)   { z=pixel:   z=sinh(z^pixel)*pixel  ,           |z|<=4
   }
NxJ(XYAXIS)  { z=pixel:   z=1/sin(z*pixel)  ,                |z|<=4
   }
NxK(XAXIS)   { z=pixel:   z=(1/sin(z^pixel))*pixel  ,        |z|<=4
   }
NxL(XYAXIS)  { z=pixel:   z=(1/sin(z*pixel))*pixel  ,        |z|<=4
   }
NxM(XAXIS)   { z=pixel:   z=1/cos(z^pixel)  ,                |z|<=4
   }
NxN(XYAXIS)  { z=pixel:   z=1/cos(z*pixel)  ,                |z|<=4
   }
NxP(XYAXIS)  { z=pixel:   z=(1/cos(z*pixel))*pixel  ,        |z|<=4
   }
NxR(XYAXIS)  { z=pixel:   z=1/sinh(z*pixel)  ,               |z|<=4
   }
NxT(XYAXIS)  { z=pixel:   z=(1/sinh(z*pixel))*pixel  ,       |z|<=4
   }
NxU(XAXIS)   { z=pixel:   z=1/cosh(z^pixel)  ,               |z|<=4
   }
NxV(XYAXIS)  { z=pixel:   z=1/cosh(z*pixel)  ,               |z|<=4
   }
NxX(XYAXIS)  { z=pixel:   z=(1/cosh(z*pixel))*pixel  ,       |z|<=4
   }
NxY(XYAXIS)  { z=pixel:   z=z*pixel*sin(z*pixel)  ,          |z|<=4
   }
NxZ(XAXIS)   { z=pixel:   z=z*pixel*sin(z*pixel)+pixel ,     |z|<=4
   }
Nx2(XYAXIS)  { z=pixel:   z=z*pixel*sinh(z*pixel)+pixel ,    |z|<=4
   }
Nx3(XYAXIS)  { z=pixel:   z=z*pixel*cosh(z*pixel)  ,         |z|<=4
   }
Nx5(XYAXIS)  { z=pixel:   z=1/((z*pixel)*sin(z*pixel))   ,   |z|<=4
   }
Nx6(XYAXIS)  { z=pixel:   z=(1/((z*pixel)*sin(z*pixel)))*pixel  , |z|<=4
   }
Nx7(XYAXIS)  { z=pixel:   z=1/((z*pixel)*sinh(z*pixel))  ,   |z|<=4
   }
Nx8(XYAXIS)  { z=pixel:   z=(1/((z*pixel)*sinh(z*pixel)))*pixel  , |z|<=4
   }
Nx9(XAXIS)   { z=pixel:   z=(z^pixel)*sin(z^pixel)  ,        |z|<=4
   }
Ny1(XYAXIS)  { z=pixel:   z=(z^pixel)*sinh(z^pixel)  ,       |z|<=4
   }





