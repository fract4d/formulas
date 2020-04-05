Newton {
;These formulas were developed as a result of my
;interest in Newton's method.  They are best viewed
;using the OUTSIDE set to real or imag.
z = pixel,
root = 1:
z3 = z * z * z;
z4 = z3 * z;
z = (3 * z4 + root) / (4 * z3);
|z| <= 4
}

Newton-3 {
z = pixel,
root = 1,
zt = (0, 0):
z3 = z * z * z;
z4 = z3 * z;
z = zt - ((z4 - root) / (4 * z3));
zt = z; 
|z| <= 4
}

Newton-alt {
z = c = pixel,
root = 1:
z3 = z * z * z;
z4 = z3 * z;
z = (3 * z4 + root) / (4 * z3) + c;
|z| <= 4
}

Newton-3-alt {
z = c = pixel,
root = 1,
zt = (0, 0):
z3 = z * z * z;
z4 = z3 * z;
z = zt - ((z4 - root) / (4 * z3)) + c;
zt = z; 
|z| <= 4
}

Newton-test {
z = c = pixel,
root = 1:
z3 = z * z * z;
z4 = z3 * z;
z = (3 * z4 + root) / (4 * z3);
|z - c| <= 4
}

Newton-3-test {
z = c = pixel,
root = 1,
zt = (0, 0):
z3 = z * z * z;
z4 = z3 * z;
z = zt - ((z4 - root) / (4 * z3));
zt = z; 
|z - c| <= 4
}


Secant {
z = pixel,
z1 = (0, 0),
z2 = (0, 0):
z4 = z * z * z * z;
z = z1 - (z4 - 1) * ( z1 - z2) / ((z4 - 1) - z2);
z1 = z;
z2 = z1;
|z| <= 4
}

Newton-2 {
z = pixel,
root = 1:
z3 = z * z * z;
z4 = z3 * z;
z = (3 * z4 + root) / (4 * z3);
|z| <= 0.004
}

Secant-2 {
z = pixel,
z1 = (0, 0),
z2 = (0, 0):
z4 = z * z * z * z;
z = z1 - (z4 - 1) * ( z1 - z2) / ((z4 - 1) - z2);
z1 = z;
z2 = z1;
|z| <= 0.004
}

New {
z = pixel:
z2 = z * z;
z = (3 * z2 * z - z) / (4 * z2 - 2);
|z| <= 4
}

New-2 {
z = pixel:
z2 = z * z;
z3 = z * z2;
z = (3 * z3 * z - z2 + 1) / (4 * z3 - 2 * z);
|z| <= 4
}

Newton-11 {
z = pixel,
root = 1:
z10 =  z * z * z * z * z * z * z * z * z * z;
z11 = z10 * z;
z = (10 * z11 + root) / (11 * z10);
|z| <= 4
}

Other {
z = pixel:
z = z * z * z * z / (4 * z * z * z - 1);
|z| <= 4
}

Mandel {
z = c = pixel,
z2 = z * z:
z = (z2 - c) / (2 * z + 1);
|z| <= 4
}

Doublefeed_newt {
z = c = pixel,
zt = z * z + c,
ct = c * c * c + z:
z = (zt * zt - ct) / (2 * zt);
|z| <= 4
}

Newton_large {
z = pixel:
z100 = z ^ 100;
z = (100 * z100 * z - 1) / (101 * z100);
|z| <= 4
}

Newton_neg_real {
z = pixel:
z = (1 / z); 
z4 = z * z * z * z;
z = (-5 * z4 + 1) / (-4 * z4 * z);
|real(z)| <= 4
}


Readme {
; This Fractint .FRM file (c) 1993 by:
;
; LRCMIKE@LRC.OLDSCOLLEGE.AB.CA
;
; Michael G. Wareman
; P.O. Box 1856
; Olds, Alberta, Canada
; T0M 1P0
;
}

