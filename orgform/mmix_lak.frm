comment {

  Formulas that contain parameters in scientific notation:

   0062  0063  0137  0139  0140  0220  0222  0253  0258  0260
   0284  310

}

MandelbrotMix4r {; Jim Muth
a=real(p1), b=imag(p1), d=real(p2), f=imag(p2), g=1/f
h=1/d, j=1/(f-b), z=(-a*b*g*h)^j, k=real(p3)+1
l=imag(p3)+100, c=fn1(pixel):
z=k*((a*(z^b))+(d*(z^f)))+c
|z| < l
  ;SOURCE: 0from_ml.frm
}

MMix4-lake-0001 { ; 6990203 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.05,3)
p_p2 = (-1.5,-2)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0002 { ; 6990204 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.06,5)
p_p2 = (6,-0.05)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0003 { ; 6990206 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,5)
p_p2 = (0.4,-2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0004 { ; 6990207 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.0375,6)
p_p2 = (2,-1.5)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0005 { ; 6990209 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.2,-3)
p_p2 = (0.003,4)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0006 { ; 6990210 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,5)
p_p2 = (-5,0.5)
p_p3 = (-1.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0007 { ; 6990211 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.0033,-33)
p_p2 = (0.33,3)
p_p3 = (-2,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0008 { ; 6990212 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.01,100)
p_p2 = (-0.01,100.001)
p_p3 = (51110000,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0009 { ; 6990213 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.097)
p_p2 = (1,1.09777)
p_p3 = (-4000,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0010 { ; 6990215 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,11)
p_p2 = (-2,-2)
p_p3 = (-0.8,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0011 { ; 6990217 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,0.9)
p_p2 = (101,-1.1)
p_p3 = (-0.985,100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0012 { ; 6990219 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.4,2)
p_p2 = (-0.01,-50)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0013 { ; 6990220 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,100)
p_p2 = (-0.1,-100)
p_p3 = (-1.001,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0014 { ; 6990221 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.6,-10)
p_p2 = (10,-1)
p_p3 = (-2,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0015 { ; 6990224 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1)
p_p2 = (1,1.05)
p_p3 = (10,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0016 { ; 6990225 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.08,3)
p_p2 = (-0.8,-2)
p_p3 = (2,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0017 { ; 6990226 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,0.4)
p_p2 = (1,0.404)
p_p3 = (370,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0018 { ; 6990227 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.01)
p_p2 = (1,1.001)
p_p3 = (100,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0019 { ; 6990228 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.01,2)
p_p2 = (10,-2)
p_p3 = (9.220000000000001,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0020 { ; 6990401 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,6)
p_p2 = (-1,5)
p_p3 = (4,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0021 { ; 6990402 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,1)
p_p2 = (-100,-1)
p_p3 = (-0.99,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0022 { ; 6990404 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,-0.999)
p_p2 = (-100,-1.001)
p_p3 = (125,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0023 { ; 6990405 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-20,1.6)
p_p2 = (20,1.601)
p_p3 = (30,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0024 { ; 6990406 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.1501)
p_p2 = (1,1.15)
p_p3 = (5000,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0025 { ; 6990407 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-6,-6)
p_p2 = (6,-6.006)
p_p3 = (-20,-90)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0026 { ; 6990409 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (3,-3)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0027 { ; 6990410 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (3,-3)
p_p3 = (0.02,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0028 { ; 6990412 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.001,100)
p_p2 = (-0.001,100.001)
p_p3 = (508500000,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0029 { ; 6990413 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1000,1.009)
p_p2 = (-1000,1)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0030 { ; 6990414 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (6,66)
p_p2 = (666,6666)
p_p3 = (-3,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0031 { ; 6990415 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (333,0.3)
p_p2 = (3,32)
p_p3 = (-1.002,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0032 { ; 6990417 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,4)
p_p2 = (2,-1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0033 { ; 6990418 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,5)
p_p2 = (5,0.1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0034 { ; 6990419 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (0.2,3)
p_p3 = (-2.3,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0035 { ; 6990502 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (111,11)
p_p2 = (1111,1)
p_p3 = (-0.998,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0036 { ; 6990503 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.5,2.5)
p_p2 = (3.5,-4.5)
p_p3 = (-0.87,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0037 { ; 6990504 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,1)
p_p2 = (1,100)
p_p3 = (-0.99,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0038 { ; 6990505 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (1,-1)
p_p3 = (0.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0039 { ; 6990506 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,-3)
p_p2 = (-0.3,1.5)
p_p3 = (0,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0040 { ; 6990507 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,11)
p_p2 = (-1,-11.1)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0041 { ; 6990508 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.1,1.1)
p_p2 = (-1.1,-1.1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0042 { ; 6990509 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (1,-0.1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0043 { ; 6990510 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.007,3)
p_p2 = (11,-11)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0044 { ; 6990511 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,0.85)
p_p2 = (1,-0.85)
p_p3 = (0.9,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0045 { ; 6990515 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.2,0.2)
p_p2 = (-22,-11)
p_p3 = (-3,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0046 { ; 6990517 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.15,-1.1)
p_p2 = (10,10)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0047 { ; 6990523 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.5,-1.6)
p_p2 = (-1.7,1.8)
p_p3 = (-0.7,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0048 { ; 6990524 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (2,3)
p_p2 = (-2,-3)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0049 { ; 6990526 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (25,0.25)
p_p2 = (0.25,25)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0050 { ; 6990527 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,0.01)
p_p2 = (0.01,100)
p_p3 = (-0.988,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0051 { ; 6990528 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (100000,0.0001)
p_p3 = (-0.99,1000000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0052 { ; 6990529 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.96)
p_p2 = (1,-0.96)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0053 { ; 6990530 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,11)
p_p2 = (11,1)
p_p3 = (-0.91,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0054 { ; 6990531 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.0001,1000)
p_p2 = (-0.0001,-10000)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0055 { ; 6990601 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (333,333)
p_p2 = (1,1)
p_p3 = (0.05,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0056 { ; 6990602 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1000,1000)
p_p2 = (0.1,0.1)
p_p3 = (50,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0057 { ; 6990603 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-500,-500)
p_p2 = (-1.1,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0058 { ; 6990604 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-500,-500)
p_p2 = (-1.1,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0059 { ; 6990605 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,2)
p_p2 = (-20,-20)
p_p3 = (0,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0060 { ; 6990606 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.9,0.9)
p_p2 = (-0.9,-0.9)
p_p3 = (1,100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0061 { ; 6990609 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-150,1.5)
p_p2 = (1.5,150)
p_p3 = (-0.9949,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0062 { ; 6990610 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.00000001,800)
p_p2 = (0.00000002,400)
p_p3 = (100000000,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0063 { ; 6990611 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.00000001,800)
p_p2 = (0.00000002,400)
p_p3 = (197520000,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0064 { ; 6990612 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (100,-100)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0065 { ; 6990613 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0066 { ; 6990614 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,1)
p_p3 = (0.03,10000)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0067 { ; 6990616 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (3,5)
p_p2 = (7,9)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0068 { ; 6990624 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,0.45)
p_p2 = (-100,0.45003)
p_p3 = (420,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0069 { ; 6990625 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (9.5,-0.1)
p_p2 = (100,1000)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0070 { ; 6990628 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.23,2.45)
p_p2 = (-2.03,-1.84)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0071 { ; 6990629 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1000,1000)
p_p2 = (0.1,1)
p_p3 = (12,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0072 { ; 6990701 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1.5,-10)
p_p2 = (0.4,2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0073 { ; 6990702 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,1)
p_p2 = (-10,-1)
p_p3 = (-1.1,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0074 { ; 6990703 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.1,11)
p_p2 = (1,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0075 { ; 6990709 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.414,0.7071)
p_p2 = (-1.618,-2.718)
p_p3 = (-2.4,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0076 { ; 6990711 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,-1)
p_p2 = (10,13)
p_p3 = (1.5,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0077 { ; 6990715 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.888,0.888)
p_p2 = (-0.777,0.777)
p_p3 = (8,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0078 { ; 6990716 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-111,111)
p_p2 = (11,1)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0079 { ; 6990717 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,3)
p_p2 = (-0.8,-2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0080 { ; 6990721 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.25)
p_p2 = (-1,0.65)
p_p3 = (1,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0081 { ; 6990723 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.202,20)
p_p2 = (20,0.2)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0082 { ; 6990724 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,10)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: e

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0083 { ; 6990725 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,2)
p_p2 = (2,-3)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0084 { ; 6990726 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (81.5,-100)
p_p3 = (-0.95,10000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0085 { ; 6990728 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-3)
p_p2 = (10,0.1)
p_p3 = (0,-95)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0086 { ; 6990729 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (-1,1.11)
p_p3 = (100,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0087 { ; 6990730 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.03,1)
p_p2 = (-25,1000)
p_p3 = (35,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0088 { ; 6990731 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,-1.01)
p_p3 = (200,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0089 { ; 6990801 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (35,-63)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0090 { ; 6g052701 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-10)
p_p2 = (10,1)
p_p3 = (-0.9,5000)
; Function: i

; Same parameters as in MMix4-lake-0174, except for a higher
; bailout value (imag(p_p3) = 5000)

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0091 { ; 6990803 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-3,0.3)
p_p2 = (0.3,-3)
p_p3 = (-2.7,-60)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0092 { ; 6990804 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (3,1.5)
p_p2 = (0.75,0.375)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0093 { ; 6990806 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,10)
p_p2 = (10,0.1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0094 { ; 6990808 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,3)
p_p2 = (33,-32)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0095 { ; 6990810 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1.1,2)
p_p2 = (-0.2,3)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0096 { ; 6990811 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.01,100)
p_p2 = (-100,1)
p_p3 = (-0.9897,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0097 { ; 6990813 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,3)
p_p2 = (-0.1605,4)
p_p3 = (-0.8,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0098 { ; 6990814 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.5)
p_p2 = (-1,-1.5)
p_p3 = (5,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0099 { ; 6990816 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (1,-1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0100 { ; 6g053101 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (1,5)
p_p3 = (-3,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0101 { ; 6990819 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.4,1.99)
p_p2 = (0.4,2.01)
p_p3 = (100,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0102 { ; 60822008 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-10,10)
p_p2 = (10,-10)
p_p3 = (-0.754,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0103 { ; 6990824 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.2,2)
p_p2 = (0.0001,-100)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0104 { ; 6990826 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10000,100)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0105 { ; 6990828 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,101)
p_p2 = (1,51)
p_p3 = (6.5,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0106 { ; 6990829 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.9,1)
p_p2 = (64,-1)
p_p3 = (0,10000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0107 { ; 6990830 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.8998,1)
p_p2 = (64,-1)
p_p3 = (0,10000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0109 { ; 6990902 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,-1)
p_p2 = (0.1,1)
p_p3 = (10,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0110 { ; 6990903 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (-0.01,-100)
p_p3 = (-0.6,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0111 { ; 6990905 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.98,0.76)
p_p2 = (-0.23,0.45)
p_p3 = (1.00087,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0112 { ; 6990906 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (16,-5)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0113 { ; 6990907 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,100)
p_p2 = (0.1,0.1)
p_p3 = (60,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0114 { ; 6990908 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,99)
p_p2 = (1,98)
p_p3 = (500,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0115 { ; 6990909 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (200,200)
p_p2 = (0.02,0.07000000000000001)
p_p3 = (500,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0116 { ; 6990914 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,3)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0117 { ; 6990915 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,3)
p_p2 = (-0.2,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0118 { ; 6990918 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,0.9)
p_p2 = (1,1.01)
p_p3 = (10,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0119 { ; 6990921 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (-0.2,3)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0120 { ; 6990922 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,0.2)
p_p2 = (1,2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0121 { ; 6990927 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.25)
p_p2 = (1,-1.25)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0122 { ; 6990928 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-1)
p_p2 = (-0.5,1)
p_p3 = (2,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0123 { ; 6990929 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-1)
p_p2 = (2,-0.5)
p_p3 = (0,-82)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0124 { ; 6990930 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-0.5)
p_p2 = (1,-1)
p_p3 = (-2,-90)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0125 { ; 6991001 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1)
p_p2 = (1,-1)
p_p3 = (-2.4,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0126 { ; 6991003 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.3,3)
p_p2 = (1,-2)
p_p3 = (-0.4,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0127 { ; 6991008 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (11,-11)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0130 { ; 6991015 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-10,-0.9)
p_p2 = (10,0.9)
p_p3 = (-0.8,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0131 { ; 6991019 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,-0.1)
p_p2 = (10,10)
p_p3 = (45,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0132 { ; 6991020 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-11)
p_p2 = (1,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0133 { ; 6991024 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (-1,-4)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0134 { ; 6991028 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-10,10)
p_p2 = (10,-10)
p_p3 = (-0.99,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0135 { ; 6991103 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (25,-0.25)
p_p2 = (25,0.25)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0136 { ; 6991104 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (5,0.1)
p_p2 = (5,-0.1)
p_p3 = (30,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0137 { ; 61105000 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (0.000000000000001,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0138 { ; 6991106 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,0.03)
p_p2 = (10,-0.03)
p_p3 = (150,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0139 { ; 6991107 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = -10^(-97) + flip(100)
p_p2 = (-100,1)
p_p3 = (-0.9898,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0139B { ; 6991107 - Formula by Sylvie Gallet & Jim Muth
;
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = -1e-97 + flip(100)
p_p2 = (-100,1)
p_p3 = (-0.9898,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0140 { ; 6991108 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2.71828182845904)
p_p2 = (0.000000000000001,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0141 { ; 6991112 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (10,0.1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0142 { ; 6991113 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1000)
p_p2 = (-1,-1000)
p_p3 = (-0.9999,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0143 { ; 6991114 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,3)
p_p2 = (-0.1,-11)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0144 { ; 6991116 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-11)
p_p2 = (11,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0145 { ; 6991117 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-12)
p_p2 = (-12,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0146 { ; 6991118 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (-0.4,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0147 { ; 6991119 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,250)
p_p2 = (1,0.1)
p_p3 = (10,100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0148 { ; 6991120 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (4,3)
p_p2 = (2,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0149 { ; 6991121 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1.5,-2)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0150 { ; 6991122 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (2,1)
p_p3 = (1,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0151 { ; 6991123 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-11)
p_p2 = (11,1)
p_p3 = (-0.8,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0152 { ; 6991124 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,2)
p_p2 = (-1,-2)
p_p3 = (0,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0153 { ; 6991125 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,1.5)
p_p2 = (1.5,-1.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0154 { ; 6991126 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-100)
p_p2 = (100,1)
p_p3 = (-0.99,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0155 { ; 6991127 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (1,-1)
p_p3 = (-0.1,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0156 { ; 6991128 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.08,4)
p_p2 = (40,-0.015)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0158 { ; 6991202 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,11)
p_p2 = (-1,1)
p_p3 = (0.2,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0159 { ; 6991204 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,-1.01)
p_p3 = (100,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0160 { ; 6991205 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (-0.2,3)
p_p3 = (-1.8,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0161 { ; 6991207 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-0.8)
p_p2 = (1,-0.799)
p_p3 = (23,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0162 { ; 6991209 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,100)
p_p2 = (0.1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0163 { ; 6991212 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100)
p_p2 = (-0.01,-1)
p_p3 = (30,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0164 { ; 6991213 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1000)
p_p2 = (-100,-1)
p_p3 = (-0.95,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0165 { ; 6991215 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (2,0.2)
p_p2 = (-1,-2)
p_p3 = (3,-80)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0166 { ; 6991216 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (1,-1)
p_p3 = (0.1,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0167 { ; 6991217 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.14,3)
p_p2 = (-2.11,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0168 { ; 6991219 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.0002,6)
p_p2 = (6,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0169 { ; 6991223 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-3,-3)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0170 { ; 6991224 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.5)
p_p2 = (-2,2.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0171 { ; 6991225 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.25,2)
p_p2 = (-0.044,2.5)
p_p3 = (0,10000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0172 { ; 6991226 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.5)
p_p2 = (1,2.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0173 { ; 6991227 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,10)
p_p2 = (-10,1)
p_p3 = (-0.885,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0174 { ; 6991228 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-10)
p_p2 = (10,1)
p_p3 = (-0.9,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0175 { ; 6991229 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-3)
p_p2 = (-25,1)
p_p3 = (-0.958,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0176 { ; 6991230 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.01,101)
p_p2 = (101,0.01)
p_p3 = (-0.8,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0177 { ; 6991231 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-11)
p_p2 = (-10,1)
p_p3 = (-0.88,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0178 { ; 6000101 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.222,-5)
p_p2 = (1.983,-1)
p_p3 = (-0.6,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0179 { ; 6000102 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.25,-5)
p_p2 = (1,1)
p_p3 = (-1.1,320000)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0180 { ; 6000103 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.01,2.5)
p_p2 = (10,-0.7071)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0181 { ; 6000104 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (-0.0615,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0183 { ; 6000106 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,-0.9)
p_p2 = (-100,-0.899)
p_p3 = (-40,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0184 { ; 6000107 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.1,-1.2)
p_p2 = (-1.3,0.9)
p_p3 = (0,100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0185 { ; 6000108 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,100)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0186 { ; 6990110 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.4142136)
p_p2 = (-1,-1.6180339)
p_p3 = (0,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0187 { ; 6000111 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-2,-2)
p_p2 = (1,0.9)
p_p3 = (0,11)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0188 { ; 6000113 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (3,3)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0189 { ; 6000114 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.4,2.5)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0190 { ; 6000115 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (-2.44949,2.44949)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0191 { ; 6000116 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,12.5)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0192 { ; 6000117 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.8,1.5)
p_p2 = (1,1)
p_p3 = (0,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0193 { ; 6000118 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.333,2)
p_p2 = (-2,-2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0194 { ; 6000119 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.2)
p_p2 = (-1.23,1.234)
p_p3 = (-0.4,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0195 { ; 6000120 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (2.71828182845905,3.14159265358979)
p_p2 = (1.41421356238,0.70710706)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0196 { ; 6000121 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-2.13)
p_p2 = (-3,-4)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0197 { ; 6000122 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.6,0.6)
p_p2 = (-0.6,0.666)
p_p3 = (23.25,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0198 { ; 6000125 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0199 { ; 6000126 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2.499)
p_p2 = (-1,2.501)
p_p3 = (100,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0200 { ; 6000127 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-2,1)
p_p2 = (3,-4)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0201 { ; 6000128 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.15,1.5)
p_p2 = (-1.5,-0.15)
p_p3 = (3,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0202 { ; 6000129 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.13,3)
p_p2 = (-25,-23)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0203 { ; 6000130 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,365)
p_p2 = (-1,363)
p_p3 = (971,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0204 { ; 6000131 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,0.7)
p_p2 = (1,0.6)
p_p3 = (10,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0205 { ; 6000201 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,101)
p_p2 = (-0.5,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0206 { ; 6000202 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,100)
p_p2 = (-1,-1)
p_p3 = (1,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0207 { ; 6000203 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (1,-100)
p_p3 = (1,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0208 { ; 6000204 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (2,2)
p_p2 = (0.03,3)
p_p3 = (-0.993,100000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0209 { ; 6000205 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.05)
p_p2 = (-1,1.05)
p_p3 = (0,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0210 { ; 6000206 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1.2,-2.3)
p_p2 = (-3.4,-4.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0211 { ; 6000207 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,2)
p_p2 = (1,-3.2)
p_p3 = (-2,1000)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0212 { ; 6000210 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-3)
p_p2 = (-1,1)
p_p3 = (0.05,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0213 { ; 6000211 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-5)
p_p2 = (-1,1)
p_p3 = (0.1,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0214 { ; 6000212 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-3)
p_p2 = (2,2)
p_p3 = (-0.9,100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0215 { ; 6000214 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (120,120)
p_p3 = (0.055,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0216 { ; 6000215 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (5,10)
p_p2 = (15,20)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0217 { ; 6000217 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,-3)
p_p2 = (3,0.3)
p_p3 = (0.6,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0218 { ; 6000219 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.09)
p_p2 = (1,-0.09)
p_p3 = (210,5000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0220 { ; 6000221 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.75)
p_p2 = (1,-24)
; p_p3 = (0,1E+150)
p_p3 = flip(1e+150)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0221 { ; 6000222 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1)
p_p2 = (-1,-1)
p_p3 = (0.15,100)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0222 { ; 6000222a - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1)
p_p2 = (-1,-1)
; p_p3 = (0.15,9.999999999999999e+249)
p_p3 = 0.15 + flip(9.999999999999999e+249)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0223 { ; 6000223 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.1,3)
p_p2 = (-1,-3)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0224 { ; 6000224 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.5)
p_p2 = (-1,0.78)
p_p3 = (2,250)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0225 { ; 6000225 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.55)
p_p2 = (-1,0.65)
p_p3 = (8,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0227 { ; 6000228 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-9999)
p_p2 = (1.3,2)
p_p3 = (-0.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0228 { ; 6000229 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.04)
p_p2 = (1,-1)
p_p3 = (0,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0229 { ; 6000301 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (-1,-0.9)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0230 { ; 6000303 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,5)
p_p2 = (0.001,-2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0231 { ; 6000304 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,1)
p_p2 = (0.01,-1)
p_p3 = (-0.9,100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0232 { ; 6000305 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.01,-99)
p_p2 = (-1,0.75)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0233 { ; 6000306 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.7071)
p_p2 = (-2,-1.4142)
p_p3 = (1,5000000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0234 { ; 6000307 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.9)
p_p2 = (1,-1.9)
p_p3 = (0,-82.5)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0236 { ; 6000309 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,1)
p_p3 = (0,10)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0237 { ; 6000310 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,5)
p_p2 = (1,-0.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0238 { ; 6000311 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.5)
p_p2 = (-3,0.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0239 { ; 6000312 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.25)
p_p2 = (-1,-1.75)
p_p3 = (-2,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0240 { ; 6000313 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (-0.01,-101)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0241 { ; 6000314 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,-1.4142)
p_p2 = (-0.1,1.4142)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0242 { ; 6000315 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-5,-1)
p_p2 = (4,-2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0243 { ; 6000317 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.6)
p_p2 = (2.4,-1.9)
p_p3 = (0,-92)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0244 { ; 6000318 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.476,1)
p_p2 = (1.302,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0245 { ; 6000319 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.4142)
p_p2 = (-1,2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0246 { ; 6000320 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (666,666)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0247 { ; 6000321 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (100,100.5)
p_p2 = (0.1,0.1)
p_p3 = (100,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0248 { ; 6000322 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,2)
p_p2 = (1,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0249 { ; 6000323 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0250 { ; 6000324 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,1)
p_p3 = (0,-80)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0251 { ; 6000325 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (-1,-1)
p_p3 = (0,10000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0252 { ; 6000327 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.9)
p_p2 = (-1,-1.1)
p_p3 = (11,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0253 { ; 6000328 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.9)
p_p2 = (-1,-0.5)
; p_p3 = (60,1E+100)
p_p3 = 60 + flip(1E+100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0254 { ; 6000329 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.96)
p_p2 = (-1,-1.01)
p_p3 = (111,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0255 { ; 6000330 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (-1,1)
p_p3 = (0.015,1000000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0256 { ; 6000331 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (-1000,0.001)
p_p3 = (0,100000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0257 { ; 6000401 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100)
p_p2 = (-2,0.01)
p_p3 = (35,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0258 { ; 6000402 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (1,-2)
; p_p3 = (0,1E+100)
p_p3 = flip(1E+100)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0259 { ; 6000403 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.8)
p_p2 = (1,2.6)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0260 { ; 6000404 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.9)
p_p2 = (-1,-0.9999)
; p_p3 = (999,1E+20)
p_p3 = 999 + flip(1E+20)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0261 { ; 6000405 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.4,0.5)
p_p2 = (0.6,0.7)
p_p3 = (4.8,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0262 { ; 6000406 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.25)
p_p2 = (-1,-0.26)
p_p3 = (-1000,100000)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0263 { ; 6000407 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.667)
p_p2 = (1,1.333)
p_p3 = (5,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0264 { ; 6000408 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (2,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0265 { ; 6000410 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,2.5)
p_p2 = (-1,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0266 { ; 6000411 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1)
p_p2 = (-3,-2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0267 { ; 6000412 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1)
p_p2 = (1,-1.1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0268 { ; 6g041301 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.8)
p_p2 = (-1,-0.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0269 { ; 6g041302 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1)
p_p2 = (2,-1.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0270 { ; 6000417 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (-1,-1.11)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0271 { ; 6000418 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.5)
p_p2 = (1,-0.5)
p_p3 = (-5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0272 { ; g000420 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.9399999999999999,1.05)
p_p2 = (-1,-1.11)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0273 { ; g000420 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.9399999999999999,1.05)
p_p2 = (-1,-1.11)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0274 { ; 6teseral - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-4,-2)
p_p2 = (-3,-1)
p_p3 = (0,0)
; Function: s

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0275 { ; 6000421 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.9)
p_p2 = (1,0.3)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0276 { ; 6000422 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2.4242)
p_p2 = (1,0.4142)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0277 { ; 6000425 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (1,-4)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0278 { ; 6000426 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.2)
p_p2 = (1,-1.2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0279 { ; 6000427 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.1)
p_p2 = (1,-1.1)
p_p3 = (-0.05,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0280 { ; 6000428 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,101)
p_p2 = (0.95,1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0281 { ; 6000429 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,129)
p_p2 = (0.75,1)
p_p3 = (0.4,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0282 { ; 6g043001 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.2,5)
p_p2 = (0.2,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0283 { ; 6000430 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-2)
p_p2 = (-2,-1)
p_p3 = (0,1300)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0284 { ; 6000502 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.5,-2)
p_p2 = (-2,-1)
p_p3 = flip(10^100)
; p_p3 = (0,1E+100)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0285 { ; 6000503 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.5,-2)
p_p2 = (-2,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0286 { ; 6000506 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-0.9,0.86)
p_p2 = (1,-0.86)
p_p3 = (1,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0287 { ; 6000507 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,1.15)
p_p2 = (1,-1.15)
p_p3 = (-0.05,1000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0288 { ; 6000508 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-0.99)
p_p2 = (-1,0.99)
p_p3 = (0.1,10000)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0289 { ; 6000509 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,24)
p_p2 = (-1,12)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0290 { ; 6000512 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1000)
p_p2 = (-1000,1)
p_p3 = (-0.9982,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0291 { ; 6000513 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.2005265,2)
p_p2 = (-5,-0.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0292 { ; 6000514 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-2)
p_p2 = (0.125,4)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0293 { ; 6000515 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-2)
p_p2 = (-3,-4)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0294 { ; 6000516 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (1,-23)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0295 { ; 6000517 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (1,-16)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0296 { ; 6000518 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (1,-30)
p_p3 = (-3,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0297 { ; 6000519 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (1,-15)
p_p3 = (1,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0298 { ; 6000520 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (1,-22)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0299 { ; 6000521 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-3)
p_p2 = (1,-33)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0300 { ; 6ml30001 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.5,2)
p_p2 = (0.5,-33)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0301 { ; 6000522 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.1)
p_p2 = (1,-11)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0302 { ; 6000523 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.4142)
p_p2 = (1,-14.142)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0303 { ; 6000524 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.3)
p_p2 = (1,-3)
p_p3 = (-0.5,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0304 { ; 6000525 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.5)
p_p2 = (1,-5)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0305 { ; 6000526 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.618)
p_p2 = (1,-16.18)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0306 { ; 6000527 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.654,-0.4)
p_p2 = (-0.213,-4)
p_p3 = (0.201,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0307 { ; 6000528 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.414)
p_p2 = (1,-4.14)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0308 { ; 6000530 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (1,11.11111111111111)
p_p3 = (0.3,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0309 { ; 6000531 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,2)
p_p2 = (1,20)
p_p3 = (-3,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0310 { ; 6000601 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.9)
p_p2 = (1,-19)
p_p3 = flip(1E+120)
; p_p3 = (0,1E+120)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0311 { ; 6000602 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.5)
p_p2 = (0.007,-150)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0312 { ; 6000603 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-4)
p_p2 = (1,-5)
p_p3 = (-20,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0313 { ; 6000604 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-2.2)
p_p2 = (1,-22)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0314 { ; 6000612 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (11,11)
p_p3 = (0.4,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0315 { ; 6Brnmth - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.57,-1.57)
p_p2 = (-4.89,-4.76)
p_p3 = (90,13)
; Function: f

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0316 { ; 6Catrpil - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.5788445692312387,-1.573107089449751)
p_p2 = (-4.889614551225318,-4.766594439527574)
p_p3 = (90.79049043244729,13.00161748100223)
; Function: f

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0317 { ; 6MonyTlk - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (4.836795630148042,-3.046331819235659)
p_p2 = (-2.526959119020869,-1.048449403567842)
p_p3 = (3.689199170981574,4.560207448037486)
; Function: ash

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0318 { ; 6000615 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.75)
p_p2 = (1,-17.5)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0319 { ; 6000617 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.732,-1.5)
p_p2 = (1.966,-15)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0320 { ; 6000619 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (2,0.95)
p_p2 = (1,2)
p_p3 = (0.6,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0321 { ; 6000620 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-0.095)
p_p2 = (-1,-9.5)
p_p3 = (-0.1,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0322 { ; 6000622 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.1)
p_p2 = (-2,-2)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0323 { ; 6000623 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-12)
p_p2 = (1,12)
p_p3 = (-0.498,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0324 { ; 6000624 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.77)
p_p2 = (1,-7.77)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0325 { ; 6000625 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-2)
p_p2 = (1,-200)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0326 { ; 6000629 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.4142)
p_p2 = (1,-1.618)
p_p3 = (10,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0327 { ; 6000630 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.9)
p_p2 = (-1,1.1)
p_p3 = (1.45,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0328 { ; 6000701 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.618)
p_p2 = (1.618,-16.8)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0329 { ; 6000702 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.25)
p_p2 = (1,-5.33)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0330 { ; 6000703 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,32)
p_p2 = (1,0.03125)
p_p3 = (0.05,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0331 { ; 6000706 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1,-1)
p_p2 = (-1,1.1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0332 { ; 6000707 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1)
p_p2 = (10,-10)
p_p3 = (0.15,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0333 { ; 6000708 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.3,-1.05)
p_p2 = (1,1.05)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0334 { ; 6000711 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.6)
p_p2 = (-1.2,1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0335 { ; 6000712 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.2)
p_p2 = (1,-2.25)
p_p3 = (-25,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0336 { ; 6000714 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.5)
p_p2 = (1,15)
p_p3 = (0.4,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0337 { ; 6000715 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.6)
p_p2 = (1,-6)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0338 { ; 6000716 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.2)
p_p2 = (1,-2.3)
p_p3 = (-25,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0339 { ; 6000717 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.5)
p_p2 = (1,-10)
p_p3 = (0.25,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0340 { ; 6000718 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (10,-6.67)
p_p2 = (1,-0.667)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0341 { ; 6000719 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.5)
p_p2 = (10,-10)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0342 { ; 6000720 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.09)
p_p2 = (15,-15)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0343 { ; 6000722 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-1.4142)
p_p2 = (5,1.4142)
p_p3 = (-0.83,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0344 { ; 6000723 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.5)
p_p2 = (1,-0.5)
p_p3 = (-1.8,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0345 { ; 6980403 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.133,3)
p_p2 = (-1.5,-1.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0346 { ; 6980404 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1000)
p_p2 = (-1,999.9992999999999)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0347 { ; 6980405 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100000)
p_p2 = (1,2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0348 { ; 6980413 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.14,2.28)
p_p2 = (-1.53,-1.73)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0349 { ; 6980414 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.3,1.5)
p_p2 = (-0.93,-1.8)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0350 { ; 6980415 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (6.7,-1.2)
p_p2 = (-1.7,-8.199999999999999)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0351 { ; 6980418 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100)
p_p2 = (-1,-102)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0352 { ; 6980422 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,1.8)
p_p2 = (1,1.9)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0353 { ; 6980423 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.03,3)
p_p2 = (-1,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0354 { ; 6980425 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,0.5)
p_p2 = (1,-0.5)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0355 { ; 6980426 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.01,10000)
p_p2 = (1.1,-1)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0356 { ; 6980429 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1.631336405529954,0.7106540116580706)
p_p2 = (-0.3385723441267128,3.409710989715262)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0357 { ; 6980503 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,100)
p_p2 = (0.1,-2)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0358 { ; 6980504 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (0.333,1)
p_p2 = (-1,-3)
p_p3 = (0,0)
; Function: i

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0359 { ; 6000724 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-11,-1.1)
p_p2 = (-1,-11)
p_p3 = (-1.99,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0360 { ; 6000725 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-11,-1.1)
p_p2 = (-1,-11)
p_p3 = (-1.93,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0361 { ; 6000726 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-3,-2)
p_p2 = (1,1)
p_p3 = (0.1,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0362 { ; 6000727 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-1.25,1)
p_p2 = (0.7,-1)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0363 { ; 6000728 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (2,-2)
p_p2 = (0.3755,2)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0364 { ; 6000730 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-7.071)
p_p2 = (1,-0.7071)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0365 { ; 6000731 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (1,-0.95)
p_p2 = (1,-2.95)
p_p3 = (0,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0366 { ; 6000804 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-11,-1.1)
p_p2 = (-1,-11)
p_p3 = (-1.975,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0367 { ; 6000804 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-11,-1.15)
p_p2 = (-1,-11)
p_p3 = (-1.975,0)
; Function: r

; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

MMix4-lake-0368 { ; 6000807 - Formula by Sylvie Gallet & Jim Muth
; MandelbrotMix4 parameters (hard-coded):
; -------------------------
p_p1 = (-11,-1.1)
p_p2 = (-1,-15)
p_p3 = (-1.95,0)
; Function: r
 
; User-selectable Lake parameters:
; -------------------------------
; real part of p2: 0 = lake transform disabled
;                  any value between 0 and 100: water level in % of
;                  the screen height (0 = bottom, 100 = top)
; imag part of p2: phase
; real part of p3: amplitude of the wave (try 0.2)
; imag part of p3: frequency (try 300)

; Lake transformation (Sylvie Gallet)
; -------------------

if (real(p2) > 0 && real(p2) <= 100)
  level = real(p2) / 100         ; water level
  phase = imag(p2)               ; phase
  ampl = real(p3)                ; amplitude of the wave
  freq = imag(p3)                ; frequency
  angle = real(rotskew * pi / 180)
  exp_irot = exp(-flip(angle))
  h = 1 / real(magxmag)
  w = h / 0.75 * imag(magxmag)
  tanskew = tan(imag(rotskew * pi / 180))
  u = 2 * w * exp_irot
  v = 2 * h * (tanskew + flip(1)) * exp_irot
  z3rd = center + (-w-h*tanskew - flip(h)) * exp_irot
  z = pixel - z3rd
  b = imag(conj(u)*z) / imag(conj(u)*v)
  if (b <= level)
    dy = level - b
    z = z + 2*dy * (1+ampl*sin(freq*dy^0.2 + phase)) * v
  endif
  pixel = z + z3rd
endif

; Modified MandelbrotMix4 formula (Jim Muth)
; -------------------------------

a = real(p_p1) , b = imag(p_p1) , d = real(p_p2) , f = imag(p_p2)
g = 1/f , h = 1/d , j = 1/(f-b) , z = (-a*b*g*h)^j
k = real(p_p3) + 1 , l = imag(p_p3) + 100 , c = fn1(pixel)
:
z = k*(a*(z^b) + d*(z^f)) + c
|z| < l
}

