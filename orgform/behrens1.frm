Readme {
; by Chris Behrens, (c)opyright 1994.  xkbr53c@prodigy.com
; The only caution is that Rabadon sometimes won't work- I have 
; occasionally gotten a division by zero error. Have fun.
}

Flattop {
      c = z = pixel:
            z = sin(z+2) + (c*z)/(z-2);
          |z| <= 4;
      }

Rabadon {
     z = pixel/2; q = z^sin(pixel); g = pixel:
          z = z^q/g;
          z = (log(q) + sqr(g)) / z;
          z = 4^z / q^g*2;
          |real(z)| <=8;
    }
