;
;       These formulafile is from Karl Geigl 100327,156. 
;
;	oof means "only one formula"


  oof11 (xyaxis) {
  z = y = (pixel+1)*(1-pixel):
  z = fn1(z) * fn2(y) 
  y = fn1(y) / fn2(z)	
  |z| <= p1
}

