; FRACTAL FORMULA FILE FROM NOEL GIFFIN  "noel@.triumf.ca"
; =====================================================================
;  This is version 2 of the formula file noel.frm and contains some
;  minor revisions and a few new formula that are required for the
; fractals found in the noel1.par file
; The noel.frm file is obsolete and can be replaced by this file, as
; this file contains all required formulae for both the noel.par and 
; noel1.par parameter collections
;					Noel Giffin
;					11 Sept/ 1997
;
;    These fractal formula are all based on the same principal, which I
; refer to as "induction" or as a family, as "inductive fractals".
; The basic concept is that of using previous terms in the iterative
; loop to introduce a new dynamic.  As a class, they are all complex
; deterministic equations similar to the classic mandelbrot, but use
; these inductive or self-referential techniques. They are a little
; finicky as they don't like some of fractints default options.
; They don't like fractint's periodicity checking so make sure it's off.
; Use the command line version as just setting it to zero from the menu
; isn't good enough. Also many will not compute well if your using
; boundary tracing methods, as there are a lot of local fractal areas
; disconnected from the main set. They tend not to be locally connected
; like the mandelbrot. Boundary tracing tends to wash over these areas.
; Also The tessaral and solid guessing techniques can cause problems
; for similar reasons only it isn't quite as severe.
;
;    The formula are presented in a loose chronological sequence showing
; the logical order of development. I have litely annotated each
; equation so that you may follow the trends in my exploration.
; Feel free to take them where you will. If you encorporate them in
; other programs or remove them from this file than I would appreciate a
; reference.
;
;    There are a lot of variants for the HT formula here toward the end
; of the file. It's a formula type that I have been playing with
; recently. It basically takes a passed parameter as a constant and uses
; it as a scaling factor on the feedback from previous terms. Similar
; to digital filtering techniques. I usually use it with an inversion
; as this tends to cause a see-saw dynamic and only runs to infinity
; when things get really chaotic. At least I think thats what's
; happening.
;
;    At the very end I've included a few fractal freaks and misfits for
; laughs and general amusement.
;                                   Enjoy,
;                                   Noel Giffin
;                                   noel@reg.triumf.ca
; =====================================================================

 hydra(XAXIS) {    ; From Noel Giffin noel@triumf.ca
 ; The first inductive formula I came up with.
      z = pixel, zp = (0,0):
         temp = z
         z = z*z + zp
         zp = temp, |zp| <= 4 }


 trillium(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
 ; A minor variation in sign will produce a remarkable change
      z = pixel, zp = (0,0):
         temp = z
           z = z*z - zp
           zp = temp,  |zp| <= 4 }

 octo(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; The next obvious thing to try is different powers
; Note. Changing sign in this one like the trillium only rotates 22.5 deg.
      z = pixel,zp=(0,0):
      temp = z
      z = z^3 + zp
      zp = temp, |zp| <= 4 }

 penta(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; introducing a second function can add lots of variety.
        z = pixel, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = conj(temp),|zp| <= 4 }

 star(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Changing the sign back makes a simple but elegent fractal
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = conj(temp),|zp| <= 64 }

penta2(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; A simple technique of changing init params to map to a function.
        z = pixel^2, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = conj(temp),|zp| <= 4 }

 hsqr(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; squaring the initialized value of the hydra fractal
      z = pixel^2,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = temp, |zp| <= 4 }

 hroot(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Map hydra function to the Square root of the pixel value.
      z = pixel^0.5,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = temp, |zp| <= 4 }

frog(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; What happens if you take a root of what you just squared and summed?
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = temp^.5,|zp| <= 4 }

 kilroy(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; The sign change trick makes a small change here
        z=pixel, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = (temp)^.5,|zp| <= 4 }

 four(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; A square root initialization of the octo will halve the number of arms
      z = pixel^.5,zp=(0,0):
      temp = z
      z = z^3 - zp
      zp = temp, |zp| <= 4 }

 goat(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; What about a root of the negative sum?
       z = pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = (-temp)^.5,|zp| <= 4 }

 quatro(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Forget the squared term and iterate a trig function
        z=pixel, zp = (0,0):
          temp = z
          z = sin(z) - zp
          zp = temp,|zp| <= 4 }

 peacock(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; The next obvious function to try
      z = pixel, zp = (0,0):
      temp = z
      z = -cos(z) - zp
      zp = temp, |zp| <= 4 }

 globe(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Will it work with just a square root?
      z = pixel, zp = (0,0):
      temp = z
      z = z^.5 - zp
      zp = temp, |zp| <= 4 }

 clips(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; A rather bizzare varient made with a sign change.
      z = pixel, zp = (0,0):
      temp = z
      z = -(z^.5) - zp
      zp = temp, |zp| <= 4 }

 clipover(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Lets turn it inside out like the mandover mapping.
      z =1/pixel, zp = (0,0):
      temp = z
      z = -(z^.5) - zp
      zp = temp, |zp| <= 4 }

 psycho(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
;  Another nice two function variation
      z = pixel, zp = (0,0):
      temp = z
      z = z*z - zp
      zp = sin(-temp), |zp| <= 4 }

 exp1(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; An exponential function can produce fractals as well
      z = pixel, zp = (0,0):
      temp = z
      z = -exp(z) - zp
      zp = temp, |zp| <= 4 }

 exp1x(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; An exponential function can produce fractals as well
      z = pixel, zp = (0,0),huge=1.e32:
      temp = z
      z = -exp(z) - zp
      zp = p1/temp, (|zp| <= huge && |z| <= huge) }   

 frtan(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Lets not forget the tangent
      z = pixel, zp = (0,0):
      temp = z
      z = -tan(z) - zp
      zp = temp, |zp| <= 4 }

 fish(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Lets not completely rule out a constant either. Add one to the Trillium
        z=c=pixel, zp = (0,0):
          temp = z
          z = z*z - zp + c
          zp = temp,|zp| <= 4 }

 septo(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; We can save and use more than just the previous term
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = temp,  |zp1| <= 4 }

 pheonix(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Add conjugation and produce a great fractal even if it's spelt wrong.
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 pheonabs(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; A pheonix variant
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - abs(zp2)
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 pheon2(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; A square root mapping of the pheonix. Interesting because of the
; discontinuites introduced in the folded symmetry.
      z = pixel^.5, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 cntrpc(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; another interesting variant using two previous terms.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z  = z * zp1 - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 cntr1(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; There are many different combinations on this theme.
      z = zp1 = zp2 = pixel:
      temp = z
      z  = z * zp2 + zp1
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }


 bfly(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Be creative and try to use these terms in novel ways.
; You have to be careful what you initialize here
; or everything goes to 0.0
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z  = z * zp1 + zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 bfly1(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; A minor variation on exp1 [init to pixel], gives another
; butterfly symmetry.
      z = zp = pixel:
      temp = z
      z = -exp(z) - zp
      zp = temp, |zp| <= 4 }

 bfly2(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Try a minor real axis offset in the iterative loop.
        z=pixel, zp = (0,0):
          temp = z
          z = 1-exp(z) - zp
          zp = temp,|zp| <= 4 }

 exp2(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Init both terms to pixel ala bfly1 etc...
        z=zp=pixel:
          temp = z
          z = 1-exp(-z) - zp
          zp = temp,|zp| <= 4 }


 bfly3(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; How about a conjugation of a cosine function
        z=pixel, zp = z1 = (0,0):
          temp = z
          z = 1-cos(z) - zp
          zp = conj(temp),|zp| <= 4 }

 crown(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; some interesting combinations make some wierd formations.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z*zp2 - zp1
      zp2 = zp1^.5
      zp1 = temp,  |zp1| <= 4 }

 nigel(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; If we keep adding terms the symmetry order goes even higher
      z = pixel,zp1=zp2=zp3=(0,0):
      temp = z
      z = z*z - zp3
      zp3 = zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 cnigel(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Conjugates still show the chaotic banding it tends to
; produce in this fractal type.
      z = pixel,zp1=zp2=zp3=(0,0):
      temp = z
      z = z*z - zp3
      zp3 = zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 hflip  {    ; From Noel Giffin noel@triumf.ca
; A little non-standard math-function produces chaotic bands like the
; conjugate function but the symmetry is now skew.
      z = pixel,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = flip(temp), |zp| <= 4 }

 hflip2  {    ; From Noel Giffin noel@triumf.ca
; The pixel squared mapping still doubles the symmetry.
      z = pixel^2,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = flip(temp), |zp| <= 4 }

 royal1(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Coupling conjugate functions with others produce some nice variants.
      z = pixel,  zp = (0,0):
      temp = z
      z = z*z  - cos(zp)
      zp = conj(temp), |zp| <= 4 }

 royal2(XYAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Yet another Conjugate variation
      z = pixel, zp2 = zp1 = (0,0):
      temp = z
      z = z*z  - zp2
      zp2 = cos(zp1)
      zp1 = conj(temp), |zp1| <= 4}

 three(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; A very different idea. Don't use the current value, just previous ones.
; You still have to save it of course.
      z = pixel,  zp1 = zp2 = (0,0):
      temp = z
      z = zp2*zp2  - zp1
      zp2 = zp1
      zp1 = temp, |zp1| <= 4}

 tree(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Try a different order of the terms.
      z = pixel,  zp1 = zp2 = (0,0):
      temp = z
      z = zp1*zp1  - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 scorpio(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
;  Throw in a second function and things get interesting again
      zp1 = zp2 = pixel, z = (0,0):
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = sin(temp), |zp1| <= 4}

 trick(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; An different method to work in a second function
      z = pixel, zp = (0,0):
         temp = z
           z = sin(z)*z - zp
           zp = (temp),  |zp| <= 4 }

 logf  {    ; From Noel Giffin noel@triumf.ca
; I never did work with logs that much but this one was interesting.
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = log(1-temp),|zp| <= 4 }

 xxx  {    ; From Noel Giffin noel@triumf.ca
; Use the previous term as an exponent and see what happens
; Not particularly interesting but here for completeness and showing
; the development path.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp1 - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4}

 zzz(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Same as XXX but introduce a new dynamic by inverting a previous term
; A small but curious active region. Try 256 colour decomp.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp1 - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4}

 yyy(XAXIS) {    ; From Noel Giffin noel@triumf.ca
; Try Zprev to the power Zed (the reverse of the ZZZ function
; This formula doesn't seem to work the same in fractint vers > 17.2
; I haven't figured out why yet but what should be inside, isn't anymore.
; It doesn't change the structure, just the colouring.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4}

 zz2 (XAXIS) {    ; From Noel Giffin noel@triumf.ca
 ; Try the inversion again
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp2 - zp1
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4}

 yy2 (XAXIS) {    ; From Noel Giffin noel@triumf.ca
; This formula doesn't seem to work the same in fractint vers > 17.2
; I haven't figured out why yet but what should be inside, isn't anymore.
; Might be a new fractint bug or perhaps a side effect from a bugfix.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp2| <= 4}

 texp1 (XAXIS) {    ; From Noel Giffin noel@triumf.ca
; Lets try a different constant with a non-zero imaginary component
      z = pixel, c = (1.5,0.5), zp = (0,0):
      temp = z
      z = -exp(z) - zp
      zp = c/temp, |zp| <= 4 }

 ht1 {    ; From Noel Giffin noel@triumf.ca
; Ah! You can use a variable in the inversion but now check for overflow.
; Good results are found when the real part of p1 is in the range 0.1->1.0
; With some sort of special value aprox. 0.148148...
; Setting the imaginary part as well causes very strange fractals
      z = pixel,zp=temp=(0,0),huge=1.0e32:
      temp = z
      z = z*z + zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) }

 htc {    ; From Noel Giffin noel@triumf.ca
; You can do it with a constant too.
      z = c = pixel,zp=(0,0),huge=1.0e32:
      temp = z
      z = z*z + zp
      zp = c*p1/temp, (|zp| <= 64) && (|z| <= huge) }

 htd {    ; From Noel Giffin noel@triumf.ca
; Try a second order inductive term.
      z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) }

 htgen {    ; From Noel Giffin noel@triumf.ca
; Try a second order inductive term.
      z = pixel, zp1 = (0,0), bail=real(p2),huge=1.0e32:
      temp = z
      z = z*z + zp1
      zp1 = p1/temp, (|zp1| <= bail) && (|z| <= huge) }


 yyt {    ; From Noel Giffin noel@triumf.ca
; Changing the yyy to the more general form using P1
      z = zp1 = pixel, zp2 = (0,0), huge=1.0e32:
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp2| <= 64) && (|z| <= huge) }

 newt {    ; From Noel Giffin noel@triumf.ca
; Playing around with variations of the ht type. This is a frog mutation.
; Try values of P1 between 0.2 and 1.0 Also try the imaginary component.
        z=pixel, zp = (0,0), huge=1.0e32:
          temp = z
          z = z*-z + zp
          zp = p1/temp^.5, (|zp| <= 4) && (|z| <= huge) }

 rat {    ; From Noel Giffin noel@triumf.ca
; Still more attempts at ht variants
      z = zp1 = pixel, zp2 = (0,0),huge=1.0e32:
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = (temp/zp1)*p1, (|zp1| <= 64) && (|z| <= huge) }

 octet {    ; From Noel Giffin noel@triumf.ca
; The ht varient of the octo formula
      z = pixel,zp=(0,0),huge=1.0e32:
      temp = z
      z = z^3 + zp
      zp = p1/temp, (|zp| <=64) && (|z| <= huge) }

 tsept {    ; From Noel Giffin noel@triumf.ca
; Why not try this change on all the good formula so far?
      z = pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) }

 htree(XAXIS)  {    ; From Noel Giffin noel@triumf.ca
; Try a different order of the terms.
      z = zp2 = pixel,  zp1 = (0,0), huge = 1.0e32:
      temp = z
      z = zp1*zp1  - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) }

; This next formula seems to be closely related to one of the lambda[sin]
; functions in " The Science of fractal Images" page 162.
; by H.O. Peitgen and D. Saupe
; Related yes, although it's not obvious to me why at this time. Curious?
; Oh, yes! You will have to zoom out to +/- 2 pi on the x axis

 quartet1 {    ; From Noel Giffin noel@triumf.ca
; Use an input parameter (real part of p2) to control the bailout.
; increasing the bailout will reduce the disk size and a wider and
; more interesting range of workable P1 input parameters.
       z=pixel, zp = (0,0), bail=real(p2), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/temp, (|zp| <= bail && |z| <= huge) }

 htz0 {    ; From Noel Giffin noel@triumf.ca
;          some unusual julia intializations
      z = pixel^3:
      z = z*z + p1, (|z| <= 4.) }

 htzi {    ; From Noel Giffin noel@triumf.ca
;          some unusual julia intializations 
      z =(1.0,1.0)/pixel^4:
      z = z^2 + p1, |z| <=32767.0 }

 htzsin {    ; From Noel Giffin noel@triumf.ca
;          some unusual julia intializations 
      z = sin(pixel)^4:
      z = z*z + p1, |z| <=4.0 }

 htzsini {    ; From Noel Giffin noel@triumf.ca
;          some unusual julia intializations 
      z = 1/sin(pixel)^4:
      z = z*z + p1, |z| <=4.0 }

 quartest1 {    ; From Noel Giffin noel@triumf.ca
      z = zp1 = pixel, zp2 = (0,0), huge = 1.0e32:
       temp = z
       z = sin(zp2) - zp1
       zp2 = zp1
       zp1 = p1/temp, (|zp| <= huge && |z| <= huge) }


 quartet {    ; From Noel Giffin noel@triumf.ca
; The quatro-HT variation. Use real part of p1  0.0 < p1 < 1.0
; Adding the inversion causes what looks like an infinite extension along
; the real axis. Using the Imag component will add some nice asymmetry.
       z=pixel, zp = (0,0), huge = 1.0e30:
       temp = z
       z = sin(z) - zp
       zp = p1/temp, (|zp| <= huge && |z| <= huge) }

 quartet2 {    ; From Noel Giffin noel@triumf.ca
 ; a slightly different initialization of the basic quartet formula
       z=zp=pixel, huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/temp, (|zp| <= huge && |z| <= huge) }


 quartz {    ; From Noel Giffin noel@triumf.ca
      z=c=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = -sin(z) - zp
       zp = p1/temp, (|zp| <= huge && |z| <= huge) }

 quart2 {    ; From Noel Giffin noel@triumf.ca
; The quatro-HT variation. Use real part of p1  0.0 < p1 < 1.0
; Adding the inversion causes what looks like an infinite extension along
; the real axis. Using the Imag component will add some nice asymmetry.
       z=c=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = c/temp, (|zp| <= 4 && |z| <= huge) }



 quart3 {    ; From Noel Giffin noel@triumf.ca
       z=pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp2
       zp2 = zp1
       zp1 = p1/temp, (|zp2| <= huge && |z| <= huge) }

 quart4 {    ; From Noel Giffin noel@triumf.ca
       z=zp1=pixel, zp2 = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) + zp2
       zp2 = zp1
       zp1 = conj(p1/temp), (|zp2| <= huge && |z| <= huge) }

 quart5 {    ; From Noel Giffin noel@triumf.ca
       z = zp1=pixel, zp2 = (0,0), huge = 1.0e32:
       temp = z
       z = sin(zp1) - zp2
       zp2 = zp1
       zp1 = p1/temp, (|zp2| <= huge && |z| <= huge) }


 janet {    ; From Noel Giffin noel@triumf.ca
       z=zp1=pixel, zp2 = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp2
       zp2 = zp1
       zp1 = p1/temp, (|zp2| <= 4 && |z| <= huge) }

 quartc {    ; From Noel Giffin noel@triumf.ca
; This makes for an unusual combination of fractal characteristics
; Recognizable sin fractal filled with chaotic banding.
; Real part of P1 should be about 0.1 and Imag portion can be 0.0
; Oh yes! You will have to zoom out to +/- 2pi on the x axis for full view.
       z=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/conj(temp),(|zp| <= 4 && |z| <= huge) }

 quartc1 {    ; From Noel Giffin noel@triumf.ca
       z=pixel, zp = (0,0), bail=real(p2),huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/conj(temp),(|zp| <= bail && |z| <= huge) }


 pheot {    ; From Noel Giffin noel@triumf.ca
; The ht flavour of the pheonix fractal gives some nice escher like
; fractals
      z = pixel, zp1 = zp2 = (0,0),huge=1.0e32:
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = p1/conj(temp), (|zp1| <= 64) && (|z| <= huge) }

 pheot1 {    ; From Noel Giffin noel@triumf.ca
; The ht flavour of the pheonix fractal gives some nice escher like
; fractals
      z = pixel, zp1 = zp2 = (0,0), bail=real(p2), huge=1.0e32:
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = p1/conj(temp), (|zp1| <= bail) && (|z| <= huge) }


 pentet {    ; From Noel Giffin noel@triumf.ca
; the HT variant of the penta formula
        z = pixel, zp = (0,0),huge=1.0e32:
          temp = z
          z = z*z - zp
          zp = p1/conj(temp), (|zp| <= 64) && (|z| <= huge) }

 tstar {    ; From Noel Giffin noel@triumf.ca
; For the star fractal as well it makes a dramatic change.
; Use real 0.1 < p1 < 1.0
        z=pixel, zp = (0,0),huge=1.0e32:
          temp = z
          z = z*z + zp
          zp = p1/conj(temp), (|zp| <= 64) && (|z| <= huge) }

 petcock (XAXIS) {    ; From Noel Giffin noel@triumf.ca
      z = pixel, zp = (0,0):
      temp = z
      z = -cos(z) - zp
      zp = 1/temp, |zp| <=64 }

 tpet {    ; From Noel Giffin noel@triumf.ca
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = -cos(z) - zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) }

 tpet1 {    ; From Noel Giffin noel@triumf.ca
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = cos(z) - zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) }

 tpet2 {    ; From Noel Giffin noel@triumf.ca
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = cos(z) + zp
      zp = p1/temp, (|zp| <= 4) && (|z| <= huge) }

 htexp1 {    ; From Noel Giffin noel@triumf.ca
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = -exp(z) - zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)}

 htexp2 {    ; From Noel Giffin noel@triumf.ca
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = exp(z) - zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)}

 htexp3 {    ; From Noel Giffin noel@triumf.ca
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = exp(z) + zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)}


;========================================================================
; The  following aren't really fractals, but are some rather strange
; anomolies that I've stumbled across and kept to play with.
   
   quiltX(XAXIS) {    ; From Noel Giffin noel@triumf.ca
; The combination of a typing error and a bug in fractints parser
; makes weird quilt like patterns, I hope they don't fix it. I like it.
     z = zp = pixel, huge = 1.e32:
      temp = z
      z = z*z  - zp
      zp = p1/temp^.5, |zp| <= 4}

   quilt(XAXIS) {    ; From Noel Giffin noel@triumf.ca
; The combination of a typing error and a bug in fractints parser
; makes weird quilt like patterns, I hope they don't fix it. I like it.
     z = = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp2*zp2  - zp1
      zp2 = zp1
      zp1 = temp^.5, |zp1| <= 4}

   textur1(XAXIS) {    ; From Noel Giffin noel@triumf.ca
; Zoom into the noise region outside the 2.0 radius with 256 colour decomp
; or try boundary tracing in iter=summ or mult mode. Make sure float=yes
; earlier versions of fractint had more trouble with this equation
; and broke inside as well.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = temp^0.5, |zp1| <= 4}

   textur2(XAXIS) {    ; From Noel Giffin noel@triumf.ca
; A minor variation on the previous formula to see what happens
; Zoom in far enough and find some strange moire' patterns.
      z = zp1 = zp2 = pixel:
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = temp^0.5, |zp1| <= 4}
;========================================================================
;                     Noel@reg.triumf.ca
