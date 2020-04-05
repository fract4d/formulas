
----------------------------------------------------------------------

comment     { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
              ;   Sun, 19 May 2002 21:48:12
              ;
        For a (slightly) different point of view replace the group of
        variables at the start of the formula by one of the three
        following groups:

 HPixZ = (0.965925826289068,0.0)
 HPixZ2 = -0.258819045102521
 VPixZ = (-0.0449434555275477,0.984807753012208)
 VPixZ2 = -0.16773125949652
 NZ = (0.254887002244179,-0.17364817766693)
 NZ2 = 0.951251242564197

 HPixZ = (0.866025403784439,0.0)
 HPixZ2 = -0.5
 VPixZ = (-0.25,0.866025403784439)
 VPixZ2 = -0.43301270189222
 NZ = (0.43301270189222,0.5)
 NZ2 = 0.75

 HPixZ = -0.258819045102521
 HPixZ2 = (0.965925826289068,0.0)
 VPixZ = -0.16773125949652
 VPixZ2 = (-0.0449434555275477,0.984807753012208)
 NZ = 0.951251242564197
 NZ2 = (0.254887002244179,-0.17364817766693)

 }

----------------------------------------------------------------------

RotOwensJulZiZjk   { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                     ;   Sun, 19 May 2002 21:48:12
                     ; 4d-algebra math by Morgan L. Owens
                     ;
 ;periodicity=no, outside=summ
 ;maxit > mymaxit*(stepnum+1) --> mymaxit: max. iterations per slice,
 ;                                stepnum: number_of_slices - 1
 ;
 ;Params: p1r: depth of far clipping plane
 ;        p1i: depth of near clipping plane
 ;        p2r: rotation angle of 3d slice around zi
 ;        p2i: rotation in jk-plane
 ;        p3r: cr
 ;        p3i: ci
 ;        p4r: cj
 ;        p4i: ck
 ;        p5r: mymaxit
 ;        p5i: stepnum
 ;
 HPixZ = (1.0,0.0)
 HPixZ2 = 0.0
 VPixZ = (0.0,1.0)
 VPixZ2 = 0.0
 NZ = (0.0,0.0)
 NZ2 = 1.0
 ;
 bailout = 4
 ;
 stepnum = imag(p5)
 delta = (real(p1)-imag(p1))/stepnum
 zz = NZ*imag(p1) + HPixZ*real(pixel) + VPixZ*imag(pixel)
 zz2 = NZ2*imag(p1) + HPixZ2*real(pixel) + VPixZ2*imag(pixel)
 dzz = NZ*delta, dzz2 = NZ2*delta
 ang = real(p2)*pi/180
 si = sin(ang), co = cos(ang)
 tmp = real(dzz)*co + dzz2*si + flip(imag(dzz))
 dzz2 = dzz2*co - real(dzz)*si
 dzz = tmp
 zz0 = real(zz)*co + zz2*si + flip(imag(zz))
 zz2 = zz2*co - real(zz)*si
 zz = zz0
 ang = exp(flip(imag(p2)*pi/180))
 zz2 = zz20 = zz2*ang, dzz2 = dzz2*ang
 j = m = i = 0:
   tmp = sqr(zz) + real(zz2)*zz2 + imag(zz2)*flip(zz2) + p3
   zz2 = 2*(real(zz)*zz2+imag(zz)*flip(zz2)) + p4
   zz = tmp
   IF (bailout >= |zz|+|zz2|)
     i = i + 1
   ELSE
     i = 0
     m = m + 1
     zz = zz0 = zz0 + dzz
     zz2 = zz20 = zz20 + dzz2
   ENDIF
   z = m - j
   j = j + 1
 stepnum >= m && p5 >= i
 }

-------------------------------------------------------------------

TetraSpheres  { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                ;   Wed, 22 May 2002 01:55:42
                ; Four mirrored spheres at the corners of a
                ; tetrahedron, each touching the other three.
 ;( Viewing direction is positive z )
 ;colouring: number of iterations
 ;periodicity=no
 ;p1r: z-depth of viewing ray's start (try -1.5 or 0.5)
 ;
 ;Spheres' centers
 xy1 = (-1,-0.577350269189625)              ;(-1, -1/sqrt(3))
 xy2 = (1,-0.577350269189625)               ;( 1, -1/sqrt(3))
 xy3 = (0,1.15470053837925)                 ;( 0,  2/sqrt(3))
 ;xy4 = (0,0)
 z123 = -0.408248290463863                  ;(-1/sqrt(6), 0)
 z4 = 1.22474487139159                      ;( sqrt(3/2), 0)
 pxy = pixel, pz = real(p1)
 vxy = 0, vz = 1:
   isect = 0, dist = 999999
   dz = z123 - pz, vzdz = vz*dz, dzmod = |dz|
   dxy = xy1 - pxy
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vzdz
   IF (tmp1 > 0)
     tmp2 = |dxy| + dzmod - |tmp1|
     IF (tmp2 < 1)
       dist = tmp1 - sqrt(1-tmp2)
       xy0 = xy1, z0 = z123
       isect = 1
     ENDIF
   ENDIF
   dxy = xy2 - pxy
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vzdz
   IF (tmp1 > 0)
     tmp2 = |dxy| + dzmod - |tmp1|
     IF (tmp2 < 1)
       tmp1 = tmp1 - sqrt(1-tmp2)
       IF (tmp1 < dist)
         dist = tmp1
         xy0 = xy2, z0 = z123
         isect = 1
       ENDIF
     ENDIF
   ENDIF
   dxy = xy3 - pxy
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vzdz
   IF (tmp1 > 0)
     tmp2 = |dxy| + dzmod - |tmp1|
     IF (tmp2 < 1)
       tmp1 = tmp1 - sqrt(1-tmp2)
       IF (tmp1 < dist)
         dist = tmp1
         xy0 = xy3, z0 = z123
         isect = 1
       ENDIF
     ENDIF
   ENDIF
   dxy = -pxy, dz = z4 - pz
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vz*dz
   IF (tmp1 > 0)
     tmp2 = |dxy| + |dz| - |tmp1|
     IF (tmp2 < 1)
       tmp1 = tmp1 - sqrt(1-tmp2)
       IF (tmp1 < dist)
         dist = tmp1
         xy0 = 0, z0 = z4
         isect = 1
       ENDIF
     ENDIF
   ENDIF
   IF (isect)
     pxy = pxy + dist*vxy, pz = pz + dist*vz
     nxy = pxy - xy0, nz = pz - z0
     tmp1 = sqrt(|nxy|+|nz|), nxy = nxy/tmp1, nz = nz/tmp1
     tmp1 = (real(vxy)*real(nxy)+imag(vxy)*imag(nxy)+vz*nz)*2
     vxy = vxy - tmp1*nxy, vz = vz - tmp1*nz
     ;tmp1 = sqrt(|vxy|+|vz|), vxy = vxy/tmp1, vz = vz/tmp1
   ENDIF
 isect == 1
 }

----------------------------------------------------------------------

TetraSpheresBas   { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                    ;   Wed, 22 May 2002 01:55:42
                    ; Four mirrored spheres at the corners of a
                    ; tetrahedron, each touching the other three.
 ;( Viewing direction is positive z )
 ;colouring: on which side of the tetrahedron the ray escapes
 ;outside=summ, periodicity=no
 ;p1r: z-depth of viewing ray's start (try -1.5 or 0.5)
 ;
 ;Spheres' centers
 xy1 = (-1,-0.577350269189625)                ;(-1, -1/sqrt(3))
 xy2 = (1,-0.577350269189625)                 ;( 1, -1/sqrt(3))
 xy3 = (0,1.15470053837925)                   ;( 0,  2/sqrt(3))
 ;xy4 = (0,0)
 z123 = -0.408248290463863                    ;(-1/sqrt(6), 0)
 z4 = 1.22474487139159                        ;( sqrt(3/2), 0)
 ;Unit vectors towards tetrahedron's sides
 e1xy = (0.816496580927725,0.816496580927725) ;(sqrt(2/3),sqrt(2/3))
 e2xy = (-0.816496580927725,0.816496580927725);(-sqrt(2/3), sqrt(2/3))
 e3xy = (0,-0.942809041582067)                ;(0,-2*sqrt(2)/3)
 ;e4xy = (0,0)
 ;e123z = (1/3, 0)
 ;e4z = (-1, 0)
 pxy = pixel, pz = real(p1)
 vxy = 0, vz = j = 1:
   isect = 0, dist = 999999
   dz = z123 - pz, vzdz = vz*dz, dzmod = |dz|
   dxy = xy1 - pxy
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vzdz
   IF (tmp1 > 0)
     tmp2 = |dxy| + dzmod - |tmp1|
     IF (tmp2 < 1)
       dist = tmp1 - sqrt(1-tmp2)
       xy0 = xy1, z0 = z123
       isect = 1
     ENDIF
   ENDIF
   dxy = xy2 - pxy
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vzdz
   IF (tmp1 > 0)
     tmp2 = |dxy| + dzmod - |tmp1|
     IF (tmp2 < 1)
       tmp1 = tmp1 - sqrt(1-tmp2)
       IF (tmp1 < dist)
         dist = tmp1
         xy0 = xy2, z0 = z123
         isect = 1
       ENDIF
     ENDIF
   ENDIF
   dxy = xy3 - pxy
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vzdz
   IF (tmp1 > 0)
     tmp2 = |dxy| + dzmod - |tmp1|
     IF (tmp2 < 1)
       tmp1 = tmp1 - sqrt(1-tmp2)
       IF (tmp1 < dist)
         dist = tmp1
         xy0 = xy3, z0 = z123
         isect = 1
       ENDIF
     ENDIF
   ENDIF
   dxy = -pxy, dz = z4 - pz
   tmp1 = real(vxy)*real(dxy) + imag(vxy)*imag(dxy) + vz*dz
   IF (tmp1 > 0)
     tmp2 = |dxy| + |dz| - |tmp1|
     IF (tmp2 < 1)
       tmp1 = tmp1 - sqrt(1-tmp2)
       IF (tmp1 < dist)
         dist = tmp1
         xy0 = 0, z0 = z4
         isect = 1
       ENDIF
     ENDIF
   ENDIF
   IF (isect)
     pxy = pxy + dist*vxy, pz = pz + dist*vz
     nxy = pxy - xy0, nz = pz - z0
     tmp1 = sqrt(|nxy|+|nz|), nxy = nxy/tmp1, nz = nz/tmp1
     tmp1 = (real(vxy)*real(nxy)+imag(vxy)*imag(nxy)+vz*nz)*2
     vxy = vxy - tmp1*nxy, vz = vz - tmp1*nz
     ;tmp1 = sqrt(|vxy|+|vz|), vxy = vxy/tmp1, vz = vz/tmp1
   ELSE
     col = 5
     dist = 999999
     pz3 = pz/3, vz3 = vz/3        ;pz * e123z, vz * e123z
     tmp1 = real(vxy)*real(e1xy) + imag(vxy)*imag(e1xy) + vz3
     IF (tmp1 > 0)
       tmp2 = real(pxy)*real(e1xy) + imag(pxy)*imag(e1xy) + pz3
       dist = (1.5-tmp2)/tmp1
       col = 1
     ENDIF
     tmp1 = real(vxy)*real(e2xy) + imag(vxy)*imag(e2xy) + vz3
     IF (tmp1 > 0)
       tmp2 = real(pxy)*real(e2xy) + imag(pxy)*imag(e2xy) + pz3
       tmp1 = (1.5-tmp2)/tmp1
       IF (tmp1 <  dist)
         dist = tmp1
         col = 2
       ENDIF
     ENDIF
     tmp1 = real(vxy)*real(e3xy) + imag(vxy)*imag(e3xy) + vz3
     IF (tmp1 > 0)
       tmp2 = real(pxy)*real(e3xy) + imag(pxy)*imag(e3xy) + pz3
       tmp1 = (1.5-tmp2)/tmp1
       IF (tmp1 <  dist)
         dist = tmp1
         col = 3
       ENDIF
     ENDIF
     IF (vz < 0)
       IF ((-1.5-pz)/vz <  dist)
         col = 4
       ENDIF
     ENDIF
     z = col - j
   ENDIF
   j = j + 1
 isect == 1
 }

As of more paramters, I've cobbled together a patch for both
formulas to move the "camera" around a bit:

;---------------------- Parameter usage -----------------------
 ;p1r: camera shift x
 ;p1i: camera shift y
 ;p2r: camera shift z
 ;p2i: rotation around x-axis (will be applied before p3r)
 :p3r: rotation around y-axis
;--------------------------------------------------------------

The patch proper has to replace everything below the coordinate
constants (sphere centers and unit vector directions) up to the

;------------- TetraSpheres and TetraSpheresBas ---------------

 tmp2 = pi/180
 tmp1 = exp(flip(imag(p2)*tmp2)), tmp2 = exp(flip(real(p3)*tmp2))
 dxy = flip(conj(tmp2))
 ;
 pxy = tmp2*real(pixel) - dxy*imag(tmp1)*imag(pixel)
 pz = imag(pxy) + real(p2)
 pxy = real(pxy) + flip(real(tmp1)*imag(pixel)) + p1
 ;
 vxy = dxy*real(tmp1)
 vz = imag(vxy)
 vxy = real(vxy) + flip(imag(tmp1))
 :

;--------------------------------------------------------------

In TetraSpheresBas also replace ":" with "j = 1:"

--------------------------------------------------------------------

Inv4Klein_Group  { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                       ; Sat, 25 May 2002 08:00:52
                       ;
                 ; Modification of "3Klein_Group" by Morgan L. Owens
                 ; Circle 4 has "inverted" function.
                 ; periodicity=no
                 ; ( Circles all touching: r123 = sqrt(3)/2
                 ;                         r4   = sqrt(3)/2 + 1
                 ;                         c4   = 0             )
 ;------------------------------------
 ;p1r: radii 1 to 3
 ;p1i: radius 4
 ;p2r: Center of circle 4 x-coordinate
 ;p2i: Center of circle 4 y-coordinate
 ;------------------------------------
 ;
 ang = 2*pi/3
 c1 = 1
 c2 = exp((0,1)*ang)
 c3 = exp((0,2)*ang)
 r123 = real(p1)
 r4 = imag(p1)
 rr123 = sqr(r123)
 rr4 = sqr(r4)
 z = pixel:
   inside = 0
   IF (|z-c1| < rr123)
     z = r123*conj(r123/(z-c1)) + c1
     inside = 1
   ELSEIF (|z-c2| < rr123)
     z = r123*conj(r123/(z-c2)) + c2
     inside = 1
   ELSEIF (|z-c3| < rr123)
     z = r123*conj(r123/(z-c3)) + c3
     inside = 1
   ELSEIF (|z-p2| > rr4)
     z = r4*conj(r4/(z-p2)) + p2
     inside = 1
   ENDIF
 inside
 }

------------------------------------------------------------------------

Alt3Klein_Group  { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                       ; Tue, 28 May 2002 03:08:36 (ver. 2)
                       ; Sat, 25 May 2002 08:00:52 (ver. 1)
                 ; Modification of "3Klein_Group" by Morgan L. Owens
                 ; Centers of circles 1 and 2 are situated on the x-axis,
                 ; both circles with distance d to the y-axis.
                 ; Circle 3 touches both 1 and 2.
                 ; periodicity=no
                 ;--------------
                 ;p1r: radius 1
                 ;p1i: radius 2
                 ;p2r: radius 3
                 ;p2i: distance d ( <= radius 3 )
 ;-----------------------------------------------
 r1 = real(p1)
 r2 = imag(p1)
 r3 = real(p2)
 c1 = r1 + imag(p2)   ;wrong sign will be compensated for in the loop
 c2 = r2 + imag(p2)
 c3 = r3 - imag(p2)
 c3 = ((c1-c2)*c3+flip(sqrt((c1+c2+c3)*c1*c2*c3)*2))/(c1+c2)
 rr1 = sqr(r1)
 rr2 = sqr(r2)
 rr3 = sqr(r3)
 z = pixel:
   inside = 0
   IF (|z+c1| < rr1)
     z = r1*conj(r1/(z+c1)) - c1
     inside = 1
   ELSEIF (|z-c2| < rr2)
     z = r2*conj(r2/(z-c2)) + c2
     inside = 1
   ELSEIF (|z-c3| < rr3)
     z = r3*conj(r3/(z-c3)) + c3
     inside = 1
   ENDIF
 inside
 }

-------------------------------------------------------------------------

Alt4Klein_Group  { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                       ; Tue, 28 May 2002 03:08:36 (ver. 2)
                       ; Sat, 25 May 2002 08:00:52 (ver. 1)
                 ; Modification of "4Klein_Group" by Morgan L. Owens
                 ; Centers of circles 1 and 2 are situated on the x-axis,
                 ; both circles with distance d to the y-axis.
                 ; Circles 3 and 4 both touch 1 and 2.
                 ; periodicity=no
                 ;--------------
                 ;p1r: radius 1
                 ;p1i: radius 2
                 ;p2r: radius 3
                 ;p2i: radius 4
                 ;p3r: distance d ( <= radius 3, <= radius 4 )
 ;------------------------------------------------------------
 r1 = real(p1)
 r2 = imag(p1)
 r3 = real(p2)
 r4 = imag(p2)
 c1 = r1 + real(p3)   ;wrong sign will be compensated for in the loop
 c2 = r2 + real(p3)
 c3 = r3 - real(p3)
 c4 = r4 - real(p3)
 c3 = ((c1-c2)*c3+flip(sqrt((c1+c2+c3)*c1*c2*c3)*2))/(c1+c2)
 c4 = ((c1-c2)*c4-flip(sqrt((c1+c2+c4)*c1*c2*c4)*2))/(c1+c2)
 rr1 = sqr(r1)
 rr2 = sqr(r2)
 rr3 = sqr(r3)
 rr4 = sqr(r4)
 z = pixel:
   inside = 0
   IF (|z+c1| < rr1)
     z = r1*conj(r1/(z+c1)) - c1
     inside = 1
   ELSEIF (|z-c2| < rr2)
     z = r2*conj(r2/(z-c2)) + c2
     inside = 1
   ELSEIF (|z-c3| < rr3)
     z = r3*conj(r3/(z-c3)) + c3
     inside = 1
   ELSEIF (|z-c4| < rr4)
     z = r4*conj(r4/(z-c4)) + c4
     inside = 1
   ENDIF
 inside
 }

-------------------------------------------------------------------------

Mod4Klein_Group  { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                       ; Tue, 28 May 2002 03:08:36 (ver. 2)
                       ; Sat, 25 May 2002 08:00:52 (ver. 1)
                 ; Modification of "3Klein_Group" by Morgan L. Owens
                 ; Centers of circles 1 and 2 are situated on the x-axis,
                 ; both circles with distance d to the y-axis.
                 ; Circle 3 touches both 1 and 2.
 ;Parameters of circle 4 are not restricted. Circle has "inverted" function.
 ;periodicity=no
 ;------------------------------------
 ;p1r: radius 1
 ;p1i: radius 2
 ;p2r: radius 3
 ;p2i: radius 4
 ;p3r: Center of circle 4 x-coordinate
 ;p3i: Center of circle 4 y-coordinate
 ;p4r: distance d ( <= radius 3 )
 ;------------------------------------
 r1 = real(p1)
 r2 = imag(p1)
 r3 = real(p2)
 r4 = imag(p2)
 c1 = r1 + real(p4)   ;wrong sign will be compensated for in the loop
 c2 = r2 + real(p4)
 c3 = r3 - real(p4)
 c3 = ((c1-c2)*c3+flip(sqrt((c1+c2+c3)*c1*c2*c3)*2))/(c1+c2)
 rr1 = sqr(r1)
 rr2 = sqr(r2)
 rr3 = sqr(r3)
 rr4 = sqr(r4)
 z = pixel:
   inside = 0
   IF (|z+c1| < rr1)
     z = r1*conj(r1/(z+c1)) - c1
     inside = 1
   ELSEIF (|z-c2| < rr2)
     z = r2*conj(r2/(z-c2)) + c2
     inside = 1
   ELSEIF (|z-c3| < rr3)
     z = r3*conj(r3/(z-c3)) + c3
     inside = 1
   ELSEIF (|z-p3| > rr4)
     z = r4*conj(r4/(z-p3)) + p3
     inside = 1
   ENDIF
 inside
 }

-----------------------------------------------------------------------

Mod5Klein_Group  { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                       ; Tue, 28 May 2002 03:08:36 (ver. 2)
                       ; Sat, 25 May 2002 08:00:52 (ver. 1)
                 ; Modification of "4Klein_Group" by Morgan L. Owens
                 ; Centers of circles 1 and 2 are situated on the x-axis,
                 ; both circles with distance d to the y-axis.
                 ; Circles 3 and 4 both touch 1 and 2.
 ;Parameters of circle 5 are not restricted. Circle has "inverted" function.
 ;periodicity=no
 ;------------------------------------
 ;p1r: radius 1
 ;p1i: radius 2
 ;p2r: radius 3
 ;p2i: radius 4
 ;p3r: Center of circle 5 x-coordinate
 ;p3i: Center of circle 5 y-coordinate
 ;p4r: radius 5
 ;p4i: distance d ( <= radius 3, <= radius 4 )
 ;--------------------------------------------
 r1 = real(p1)
 r2 = imag(p1)
 r3 = real(p2)
 r4 = imag(p2)
 r5 = real(p4)
 c1 = r1 + imag(p4)   ;wrong sign will be compensated for in the loop
 c2 = r2 + imag(p4)
 c3 = r3 - imag(p4)
 c4 = r4 - imag(p4)
 c3 = ((c1-c2)*c3+flip(sqrt((c1+c2+c3)*c1*c2*c3)*2))/(c1+c2)
 c4 = ((c1-c2)*c4-flip(sqrt((c1+c2+c4)*c1*c2*c4)*2))/(c1+c2)
 rr1 = sqr(r1)
 rr2 = sqr(r2)
 rr3 = sqr(r3)
 rr4 = sqr(r4)
 rr5 = sqr(r5)
 z = pixel:
   inside = 0
   IF (|z+c1| < rr1)
     z = r1*conj(r1/(z+c1)) - c1
     inside = 1
   ELSEIF (|z-c2| < rr2)
     z = r2*conj(r2/(z-c2)) + c2
     inside = 1
   ELSEIF (|z-c3| < rr3)
     z = r3*conj(r3/(z-c3)) + c3
     inside = 1
   ELSEIF (|z-c4| < rr4)
     z = r4*conj(r4/(z-c4)) + c4
     inside = 1
   ELSEIF (|z-p3| > rr5)
     z = r5*conj(r5/(z-p3)) + p3
     inside = 1
   ENDIF
 inside
 }

------------------------------------------------------------------------

Rot3d_D3_Jul     { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 23 Jan 2003 02:56:29 (ver. 2)
                   ;   Tue, 21 Jan 2003 00:22:26 (ver. 1)
                   ; periodicity=no, outside=summ
                   ; maxit > p5real*(p5imag+1)
                   ;
 ;p1real: Rotation about x-axis (1st rotation)
 ;p1imag: Rotation about y-axis (2nd rotation)
 ;p2real: Far clipping plane
 ;p2imag: Near clipping plane
 ;p3real: cx
 ;p3imag: cy
 ;p4real: cz
 ;p4imag: Bailout
 ;p5real: Maxiter per slice
 ;p5imag: Number of slices - 1
 ;
 bailout = imag(p4), tiefnum = imag(p5)
 delta = (real(p2)-imag(p2))/tiefnum
 tmp = pi/180
 rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
 ;
 HPixXY = rotYax
 VPixZ = real(rotXax)
 VPixXY = flip(conj(rotYax))
 NXY = VPixZ*VPixXY
 NZ = imag(conj(rotXax))
 VPixXY = -NZ*VPixXY
 ;
 tmp = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
 x1 = x0 = real(tmp), y1 = y0 = imag(tmp)
 z1 = z0 = NZ*imag(p2) + HPixZ*real(pixel) + VPixZ*imag(pixel)
 tmp = NXY*delta
 dx = real(tmp), dy = imag(tmp)
 dz = NZ*delta
 cx = real(p3), cy = imag(p3), cz = real(p4)
 sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
 j = m = i = 0:
   w1 = x1, w2 = y1, w3 = z1
   x1 = sqx + 2*w2*w3 + cx
   y1 = sqz + 2*w1*w2 + cy
   z1 = sqy + 2*w1*w3 + cz
   sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   IF (bailout >= sqx+sqy+sqz)
     i = i + 1
   ELSE
     i = 0
     m = m + 1
     x1 = x0 = x0 + dx
     y1 = y0 = y0 + dy
     z1 = z0 = z0 + dz
     sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   ENDIF
   z = m - j
   j = j + 1
 tiefnum >= m && p5 >= i
 }

Rot3d_D3_Man     { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 23 Jan 2003 02:56:29 (ver. 2)
                   ;   Tue, 21 Jan 2003 00:22:26 (ver. 1)
                   ; periodicity=no, outside=summ
                   ; maxit > p5real*(p5imag+1)
                   ;
 ;p1real: Rotation about x-axis (1st rotation)
 ;p1imag: Rotation about y-axis (2nd rotation)
 ;p2real: Far clipping plane
 ;p2imag: Near clipping plane
 ;p3real: x(0)
 ;p3imag: y(0)
 ;p4real: z(0)
 ;p4imag: Bailout
 ;p5real: Maxiter per slice
 ;p5imag: Number of slices - 1
 ;
 bailout = imag(p4), tiefnum = imag(p5)
 delta = (real(p2)-imag(p2))/tiefnum
 tmp = pi/180
 rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
 ;
 HPixXY = rotYax
 VPixZ = real(rotXax)
 VPixXY = flip(conj(rotYax))
 NXY = VPixZ*VPixXY
 NZ = imag(conj(rotXax))
 VPixXY = -NZ*VPixXY
 ;
 tmp = cxy0 = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
 cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
 cz = cz0 = NZ*imag(p2) + HPixZ*real(pixel) + VPixZ*imag(pixel)
 tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
 dcz = NZ*delta
 x1 = real(p3), y1 = imag(p3), z1 = real(p4)
 sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
 j = m = i = 0:
   w1 = x1, w2 = y1, w3 = z1
   x1 = sqx + 2*w2*w3 + cx
   y1 = sqz + 2*w1*w2 + cy
   z1 = sqy + 2*w1*w3 + cz
   sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   IF (bailout >= sqx+sqy+sqz)
     i = i + 1
   ELSE
     i = 0
     m = m + 1
     cx = cx0 = cx0 + dcx
     cy = cy0 = cy0 + dcy
     cz = cz0 = cz0 + dcz
     x1 = real(p3), y1 = imag(p3), z1 = real(p4)
     sqx = sqr(x1), sqy = sqr(y1), sqz = sqr(z1)
   ENDIF
   z = m - j
   j = j + 1
 tiefnum >= m && p5 >= i
 }

------------------------------------------------------------------------

oLauwerier       { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 11 Mar 2004 04:44:00
                   ; from "Algorithmen fuer Chaos und Fraktale", p.131
            ;---------------
            ; p1real = a
            ; p1imag = b
            ; p2real = x(0)
            ; p2imag = y(0)
            ;---------------
 a = real(p1), b = imag(p1)
 x = real(p2), y = imag(p2):
   tmp = y
   y = x + y*(a*x-1-b*y)
   x = tmp
   z = x + flip(y)
 tmp == tmp
 }

oHiram           { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                   ;   Thu, 11 Mar 2004 04:44:00
                   ; 
            ;-------------------
            ; p1real = a (0<a<1)
            ;-------------------
 a = real(p1)
 x = y = n = 0:
   n = n + 1
   x = x + sin(fn1(n))/n^a
   y = y + cos(fn1(n))/n^a
   z = x + flip(y)
 n == n
 }

------------------------------------------------------------------------

Rot3d_T-set     { ; Gerald K. Dobiasovsky <gerald.dob@aon.at>
                  ;   Thu, 3 Nov 2005 02:45:56
                  ; periodicity=no, outside=summ
                  ; maxit > p5real*(p5imag+1)
 ;--------------------------------------------
 ;p1real: Rotation about x-axis (1st rotation)
 ;p1imag: Rotation about y-axis (2nd rotation)
 ;p2real: Far clipping plane
 ;p2imag: Near clipping plane
 ;p3real: x1(0)
 ;p3imag: y1(0)
 ;p4real: z1(0)
 ;p4imag: Bailout
 ;p5real: Maxiter per slice
 ;p5imag: Number of slices - 1
 ;--------------------------------------------
 ;
 bailout = imag(p4), tiefnum = imag(p5)
 delta = (real(p2)-imag(p2))/tiefnum
 tmp = pi/180
 rotXax = exp(flip(real(p1)*tmp)), rotYax = exp(flip(imag(p1)*tmp))
 ;
 HPixXY = rotYax
 VPixZ = real(rotXax)
 VPixXY = flip(conj(rotYax))
 NXY = VPixZ*VPixXY
 NZ = imag(conj(rotXax))
 VPixXY = -NZ*VPixXY
 ;
 tmp = NXY*imag(p2) + HPixXY*real(pixel) + VPixXY*imag(pixel)
 cx = cx0 = real(tmp), cy = cy0 = imag(tmp)
 cz = cz0 = NZ*imag(p2) + VPixZ*imag(pixel)       ;HPixZ -> 0
 tmp = NXY*delta, dcx = real(tmp), dcy = imag(tmp)
 dcz = NZ*delta
 x1 = real(p3)
 y1 = imag(p3)
 z1 = real(p4)
 j = m = i = 0:
   a = sqr(x1) + 2*y1*z1
   b = sqr(z1) + 2*x1*y1
   c = sqr(y1) + 2*x1*z1
   x1 = a + cx, y1 = b + cy, z1 = c + cz
   IF (bailout >= (sqr(x1)+sqr(y1)+sqr(z1)))
     i = i + 1
   ELSE
     i = 0
     m = m + 1
     cx = cx0 = cx0 + dcx
     cy = cy0 = cy0 + dcy
     cz = cz0 = cz0 + dcz
     x1 = real(p3), y1 = imag(p3), z1 = real(p4)
   ENDIF
   z = m - j
   j = j + 1
 tiefnum >= m && p5 >= i
 }

------------------------------------------------------------------------

