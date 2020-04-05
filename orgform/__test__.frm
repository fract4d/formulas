FourMandelbrots  { ; http://members.tripod.com/vismath7/proceedings/barrallo.htm 
  z=1+i, c=pixel:
  z = c*(z^2+1/z^2)
  |z| < 1000  
}

SierpinskiNet  { ; http://members.tripod.com/vismath7/proceedings/barrallo.htm 
  z=0.2*abs(pixel^3):
  IF (imag(z) > 0.5)
     z=2*real(z)+(2*imag(z)-1)*I
  ELSEIF (real(z) > 0.5)
     z=2*real(z)-1+2*imag(z)*I
  ELSE
     z=2*real(z)+2*imag(z)*I
  ENDIF
  |z| <= 100 
}

