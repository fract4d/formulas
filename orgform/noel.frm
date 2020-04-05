;  also see noel.par
;
; FRACTAL FORMULA FILE FROM NOEL GIFFIN  "noel@.triumf.ca"
; =====================================================================
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

 hydra(XAXIS) {
 ; The first inductive formula I came up with.
      z = pixel, zp = (0,0):
         temp = z
         z = z*z + zp
         zp = temp, |zp| <= 4 }


 trillium(XAXIS)  {
 ; A minor variation in sign will produce a remarkable change
      z = pixel, zp = (0,0):
         temp = z
           z = z*z - zp
           zp = temp,  |zp| <= 4 }

 octo(XYAXIS)  {
; The next obvious thing to try is different powers
; Note. Changing sign in this one like the trillium only rotates 22.5 deg.
      z = pixel,zp=(0,0):
      temp = z
      z = z^3 + zp
      zp = temp, |zp| <= 4 }

 penta(XAXIS)  {
; introducing a second function can add lots of variety.
        z = pixel, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = conj(temp),|zp| <= 4 }

 star(XAXIS)  {
; Changing the sign back makes a simple but elegent fractal
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = conj(temp),|zp| <= 64 }

penta2(XAXIS)  {
; A simple technique of changing init params to map to a function.
        z = pixel^2, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = conj(temp),|zp| <= 4 }

 hsqr(XYAXIS)  {
; squaring the initialized value of the hydra fractal
      z = pixel^2,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = temp, |zp| <= 4 }

 hroot(XAXIS)  {
; Map hydra function to the Square root of the pixel value.
      z = pixel^0.5,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = temp, |zp| <= 4 }

frog(XAXIS)  {
; What happens if you take a root of what you just squared and summed?
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = temp^.5,|zp| <= 4 }

 kilroy(XAXIS)  {
; The sign change trick makes a small change here
        z=pixel, zp = (0,0):
          temp = z
          z = z*z - zp
          zp = (temp)^.5,|zp| <= 4 }

 four(XYAXIS)  {
; A square root initialization of the octo will halve the number of arms
      z = pixel^.5,zp=(0,0):
      temp = z
      z = z^3 - zp
      zp = temp, |zp| <= 4 }

 goat(XAXIS)  {
; What about a root of the negative sum?
       z = pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = (-temp)^.5,|zp| <= 4 }

 quatro(XYAXIS)  {
; Forget the squared term and iterate a trig function
        z=pixel, zp = (0,0):
          temp = z
          z = sin(z) - zp
          zp = temp,|zp| <= 4 }

 peacock(XAXIS)  {
; The next obvious function to try
      z = pixel, zp = (0,0):
      temp = z
      z = -cos(z) - zp
      zp = temp, |zp| <= 4 }

 globe(XAXIS)  {
; Will it work with just a square root?
      z = pixel, zp = (0,0):
      temp = z
      z = z^.5 - zp
      zp = temp, |zp| <= 4 }

 clips(XAXIS)  {
; A rather bizzare varient made with a sign change.
      z = pixel, zp = (0,0):
      temp = z
      z = -(z^.5) - zp
      zp = temp, |zp| <= 4 }

 clipover(XAXIS)  {
; Lets turn it inside out like the mandover mapping.
      z =1/pixel, zp = (0,0):
      temp = z
      z = -(z^.5) - zp
      zp = temp, |zp| <= 4 }

 psycho(XAXIS)  {
;  Another nice two function variation
      z = pixel, zp = (0,0):
      temp = z
      z = z*z - zp
      zp = sin(-temp), |zp| <= 4 }

 exp1(XAXIS)  {
; An exponential function can produce fractals as well
      z = pixel, zp = (0,0):
      temp = z
      z = -exp(z) - zp
      zp = temp, |zp| <= 4 }

 frtan(XAXIS)  {
; Lets not forget the tangent
      z = pixel, zp = (0,0):
      temp = z
      z = -tan(z) - zp
      zp = temp, |zp| <= 4 }

 fish(XAXIS)  {
; Lets not completely rule out a constant either. Add one to the Trillium
        z=c=pixel, zp = (0,0):
          temp = z
          z = z*z - zp + c
          zp = temp,|zp| <= 4 }

 septo(XAXIS)  {
; We can save and use more than just the previous term
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = temp,  |zp1| <= 4 }

 pheonix(XAXIS)  {
; Add conjugation and produce a great fractal even if it's spelt wrong.
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 pheonabs(XAXIS)  {
; A pheonix variant
      z = pixel, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - abs(zp2)
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 pheon2(XAXIS)  {
; A square root mapping of the pheonix. Interesting because of the
; discontinuites introduced in the folded symmetry.
      z = pixel^.5, zp1 = zp2 = (0,0):
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 cntrpc(XYAXIS)  {
; another interesting variant using two previous terms.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z  = z * zp1 - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 cntr1(XAXIS)  {
; There are many different combinations on this theme.
      z = zp1 = zp2 = pixel:
      temp = z
      z  = z * zp2 + zp1
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }


 bfly(XYAXIS)  {
; Be creative and try to use these terms in novel ways.
; You have to be careful what you initialize here
; or everything goes to 0.0
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z  = z * zp1 + zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 bfly1(XAXIS)  {
; A minor variation on exp1 [init to pixel], gives another
; butterfly symmetry.
      z = zp = pixel:
      temp = z
      z = -exp(z) - zp
      zp = temp, |zp| <= 4 }

 bfly2(XAXIS)  {
; Try a minor real axis offset in the iterative loop.
        z=pixel, zp = (0,0):
          temp = z
          z = 1-exp(z) - zp
          zp = temp,|zp| <= 4 }

 exp2(XAXIS)  {
; Init both terms to pixel ala bfly1 etc...
        z=zp=pixel:
          temp = z
          z = 1-exp(-z) - zp
          zp = temp,|zp| <= 4 }


 bfly3(XAXIS)  {
; How about a conjugation of a cosine function
        z=pixel, zp = z1 = (0,0):
          temp = z
          z = 1-cos(z) - zp
          zp = conj(temp),|zp| <= 4 }

 crown(XAXIS)  {
; some interesting combinations make some wierd formations.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z*zp2 - zp1
      zp2 = zp1^.5
      zp1 = temp,  |zp1| <= 4 }

 nigel(XAXIS)  {
; If we keep adding terms the symmetry order goes even higher
      z = pixel,zp1=zp2=zp3=(0,0):
      temp = z
      z = z*z - zp3
      zp3 = zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 cnigel(XAXIS)  {
; Conjugates still show the chaotic banding it tends to
; produce in this fractal type.
      z = pixel,zp1=zp2=zp3=(0,0):
      temp = z
      z = z*z - zp3
      zp3 = zp2
      zp2 = zp1
      zp1 = conj(temp), |zp1| <= 4 }

 hflip  {
; A little non-standard math-function produces chaotic bands like the
; conjugate function but the symmetry is now skew.
      z = pixel,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = flip(temp), |zp| <= 4 }

 hflip2  {
; The pixel squared mapping still doubles the symmetry.
      z = pixel^2,zp=(0,0):
      temp = z
      z = z*z +  zp
      zp = flip(temp), |zp| <= 4 }

 royal1(XYAXIS)  {
; Coupling conjugate functions with others produce some nice variants.
      z = pixel,  zp = (0,0):
      temp = z
      z = z*z  - cos(zp)
      zp = conj(temp), |zp| <= 4 }

 royal2(XYAXIS)  {
; Yet another Conjugate variation
      z = pixel, zp2 = zp1 = (0,0):
      temp = z
      z = z*z  - zp2
      zp2 = cos(zp1)
      zp1 = conj(temp), |zp1| <= 4}

 three(XAXIS)  {
; A very different idea. Don't use the current value, just previous ones.
; You still have to save it of course.
      z = pixel,  zp1 = zp2 = (0,0):
      temp = z
      z = zp2*zp2  - zp1
      zp2 = zp1
      zp1 = temp, |zp1| <= 4}

 tree(XAXIS)  {
; Try a different order of the terms.
      z = pixel,  zp1 = zp2 = (0,0):
      temp = z
      z = zp1*zp1  - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4 }

 scorpio(XAXIS)  {
;  Throw in a second function and things get interesting again
      zp1 = zp2 = pixel, z = (0,0):
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = sin(temp), |zp1| <= 4}

 trick(XAXIS)  {
; An different method to work in a second function
      z = pixel, zp = (0,0):
         temp = z
           z = sin(z)*z - zp
           zp = (temp),  |zp| <= 4 }

 logf  {
; I never did work with logs that much but this one was interesting.
        z=pixel, zp = (0,0):
          temp = z
          z = z*z + zp
          zp = log(1-temp),|zp| <= 4 }

 xxx  {
; Use the previous term as an exponent and see what happens
; Not particularly interesting but here for completeness and showing
; the development path.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp1 - zp2
      zp2 = zp1
      zp1 = temp, |zp1| <= 4}

 zzz(XAXIS)  {
; Same as XXX but introduce a new dynamic by inverting a previous term
; A small but curious active region. Try 256 colour decomp.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp1 - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4}

 yyy(XAXIS) {
; Try Zprev to the power Zed (the reverse of the ZZZ function
; This formula doesn't seem to work the same in fractint vers > 17.2
; I haven't figured out why yet but what should be inside, isn't anymore.
; It doesn't change the structure, just the colouring.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4}

 zz2 (XAXIS) {
 ; Try the inversion again
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = z^zp2 - zp1
      zp2 = zp1
      zp1 = 1/temp, |zp1| <= 4}

 yy2 (XAXIS) {
; This formula doesn't seem to work the same in fractint vers > 17.2
; I haven't figured out why yet but what should be inside, isn't anymore.
; Might be a new fractint bug or perhaps a side effect from a bugfix.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = 1/temp, |zp2| <= 4}

 texp1 (XAXIS) {
; Lets try a different constant with a non-zero imaginary component
      z = pixel, c = (1.5,0.5), zp = (0,0):
      temp = z
      z = -exp(z) - zp
      zp = c/temp, |zp| <= 4 }

 ht1 {
; Ah! You can use a variable in the inversion but now check for overflow.
; Good results are found when the real part of p1 is in the range 0.1->1.0
; With some sort of special value aprox. 0.148148...
; Setting the imaginary part as well causes very strange fractals
      z = pixel,zp=temp=(0,0),huge=1.0e32:
      temp = z
      z = z*z + zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) }

 htc {
; You can do it with a constant too.
      z = c = pixel,zp=(0,0),huge=1.0e32:
      temp = z
      z = z*z + zp
      zp = c*p1/temp, (|zp| <= 64) && (|z| <= huge) }

 htd {
; Try a second order inductive term.
      z = zp2 = pixel, zp1 = (0,0), huge=1.0e32:
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) }

 htgen {
; Try a second order inductive term.
      z = pixel, zp1 = (0,0), bail=real(p2),huge=1.0e32:
      temp = z
      z = z*z + zp1
      zp1 = p1/temp, (|zp1| <= bail) && (|z| <= huge) }


 yyt {
; Changing the yyy to the more general form using P1
      z = zp1 = pixel, zp2 = (0,0), huge=1.0e32:
      temp = z
      z = zp1^z - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp2| <= 64) && (|z| <= huge) }

 newt {
; Playing around with variations of the ht type. This is a frog mutation.
; Try values of P1 between 0.2 and 1.0 Also try the imaginary component.
        z=pixel, zp = (0,0), huge=1.0e32:
          temp = z
          z = z*-z + zp
          zp = p1/temp^.5, (|zp| <= 4) && (|z| <= huge) }

 rat {
; Still more attempts at ht variants
      z = zp1 = pixel, zp2 = (0,0),huge=1.0e32:
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = (temp/zp1)*p1, (|zp1| <= 64) && (|z| <= huge) }

 octet {
; The ht varient of the octo formula
      z = pixel,zp=(0,0),huge=1.0e32:
      temp = z
      z = z^3 + zp
      zp = p1/temp, (|zp| <=64) && (|z| <= huge) }

 tsept {
; Why not try this change on all the good formula so far?
      z = pixel, zp1 = zp2 = (0,0), huge = 1.0e32:
      temp = z
      z = z*z - zp2
      zp2 = zp1
      zp1 = p1/temp, (|zp1| <= 64) && (|z| <= huge) }

 htree(XAXIS)  {
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

 quartet {
; The quatro-HT variation. Use real part of p1  0.0 < p1 < 1.0
; Adding the inversion causes what looks like an infinite extension along
; the real axis. Using the Imag component will add some nice asymmetry.
       z=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/temp, (|zp| <= 4 && |z| <= huge) }

 quartet1 {
; increasing the bailout will reduce the disk size and a wider and
; more interesting range of workable P1 input parameters.
       z=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/temp, (|zp| <= huge && |z| <= huge) }


 quartz {
      z=c=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = -sin(z) - zp
       zp = p1/temp, (|zp| <= huge && |z| <= huge) }

 janet {
       z=zp1=pixel, zp2 = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp2
       zp2 = zp1
       zp1 = p1/temp, (|zp2| <= 4 && |z| <= huge) }

 quartc {
; This makes for an unusual combination of fractal characteristics
; Recognizable sin fractal filled with chaotic banding.
; Real part of P1 should be about 0.1 and Imag portion can be 0.0
; Oh yes! You will have to zoom out to +/- 2pi on the x axis for full view.
       z=pixel, zp = (0,0), huge = 1.0e32:
       temp = z
       z = sin(z) - zp
       zp = p1/conj(temp),(|zp| <= 4 && |z| <= huge) }

 pheot {
; The ht flavour of the pheonix fractal gives some nice escher like
; fractals
      z = pixel, zp1 = zp2 = (0,0),huge=1.0e32:
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = p1/conj(temp), (|zp1| <= 64) && (|z| <= huge) }

 pheot1 {
; The ht flavour of the pheonix fractal gives some nice escher like
; fractals
      z = pixel, zp1 = zp2 = (0,0), bail=real(p2), huge=1.0e32:
      temp = z
      z  = z*z - zp2
      zp2 = zp1
      zp1 = p1/conj(temp), (|zp1| <= bail) && (|z| <= huge) }


 pentet {
; the HT variant of the penta formula
        z = pixel, zp = (0,0),huge=1.0e32:
          temp = z
          z = z*z - zp
          zp = p1/conj(temp), (|zp| <= 64) && (|z| <= huge) }

 tstar {
; For the star fractal as well it makes a dramatic change.
; Use real 0.1 < p1 < 1.0
        z=pixel, zp = (0,0),huge=1.0e32:
          temp = z
          z = z*z + zp
          zp = p1/conj(temp), (|zp| <= 64) && (|z| <= huge) }

 petcock (XAXIS) {
      z = pixel, zp = (0,0):
      temp = z
      z = -cos(z) - zp
      zp = 1/temp, |zp| <=64 }

 tpet {
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = -cos(z) - zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) }

 tpet1 {
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = cos(z) - zp
      zp = p1/temp, (|zp| <= 64) && (|z| <= huge) }

 tpet2 {
      z = pixel, zp = (0,0), huge=1.0e32:
      temp = z
      z = cos(z) + zp
      zp = p1/temp, (|zp| <= 4) && (|z| <= huge) }

 htexp1 {
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = -exp(z) - zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)}

 htexp2 {
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = exp(z) - zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)}

 htexp3 {
; An exponential function can produce fractals as well
      z = pixel, bail=real(p2), zp = (0,0), huge=1.e32:
      temp = z
      z = exp(z) + zp
      zp = p1/temp, (|zp| <=bail && |z| <=huge)}


;========================================================================
; The  following aren't really fractals, but are some rather strange
; anomolies that I've stumbled across and kept to play with.

   quilt(XAXIS) {
; The combination of a typing error and a bug in fractints parser
; makes weird quilt like patterns, I hope they don't fix it. I like it.
     z = = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp2*zp2  - zp1
      zp2 = zp1
      zp1 = temp^.5, |zp1| <= 4}

   textur1(XAXIS) {
; Zoom into the noise region outside the 2.0 radius with 256 colour decomp
; or try boundary tracing in iter=summ or mult mode. Make sure float=yes
; earlier versions of fractint had more trouble with this equation
; and broke inside as well.
      z = zp1 = pixel, zp2 = (0,0):
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = temp^0.5, |zp1| <= 4}

   textur2(XAXIS) {
; A minor variation on the previous formula to see what happens
; Zoom in far enough and find some strange moire' patterns.
      z = zp1 = zp2 = pixel:
      temp = z
      z = zp1*zp1 - zp2
      zp2 = zp1
      zp1 = temp^0.5, |zp1| <= 4}
;========================================================================
;                     Noel@reg.triumf.ca
