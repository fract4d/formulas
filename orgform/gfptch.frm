;The following formulas are modifications of the formulas noted in comment. These ;formulas appear variously in Fractint.frm, tchebych.frm, newtcheb.frm, as well as ;in the ORGFORM compilation. (1) All symmetry instructions have been removed; (2) ;z=c=pixel replaces various other formulations; (3) A user definable function has ;been added; (4) |z|<100 has been replaced by |z|<p1, thus allowing another user ;input.


gtc01 {;J_Lagandre2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  }

gtc02 {;J_Lagandre3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  }

gtc03 {;J_Lagandre4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  }

gtc04 {;J_Lagandre5 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  }

gtc05 {;J_Lagandre6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  }

gtc06 {;J_Lagandre7 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  }

gtc07 {;J_Laguerre2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*(z - 4) +2 ) / 2 + c)
  |z| < p1
  }

gtc08 {;J_Laguerre3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*(z*(-z + 9) -18) + 6 ) / 6 + c)
  |z| < p1
  }

gtc09 {;J_Laguerre4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c),
  |z| < p1
  }


gtc10 {;J_Laguerre5 - modified by Gedeon Peteri
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120 + c),
  |z| < p1
  }


gtc11 {;J_Laguerre6 - modified by Gedeon Peteri
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720) / 720 + c),
  |z| < p1
  }

gtc12 {;J_Lagandre2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  }

gtc13 {;J_Lagandre3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  }

gtc14 {;J_Lagandre4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  }

gtc15 {;J_Lagandre5 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  }

gtc16 {;J_Lagandre6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  }

gtc17 {;J_Lagandre7 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  }

gtc18 {;M_Lagandre2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  }

gtc19 {;M_Lagandre3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  }

gtc20 {;M_Lagandre4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  }

gtc21 {;M_Lagandre5 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  }

gtc22 {;M_Lagandre6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  }

gtc23 {;M_Lagandre7 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  }

gtc24 {;M_Laguerre2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*(z - 4) +2 ) / 2 + c),
  |z| < p1
  }

gtc25 {;M_Laguerre3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*(z*(-z + 9) -18) + 6 ) / 6 + c),
  |z| < p1
  }

gtc26 {;M_Laguerre4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z * ( z * ( z * ( z - 16)+ 72) - 96)+ 24 ) / 24 + c),
  |z| < p1
  }

gtc27 {;M_Laguerre5 - modified by Gedeon Peteri
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(-z+25)-200)+600)-600)+120)/120+c),
  |z| < p1
  }

gtc28 {;M_Laguerre5 - modified by Gedeon Peteri
  z = c = pixel:
  z=fn1((z*(z*(z*(z*(z*(z-36)+450)-2400)+5400)-4320)+720)/ 720 + c),
  |z| < p1
  }

gtc29 {;M_Lagandre2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((3 * z*z - 1) / 2 + c)
  |z| < p1
  }

gtc30 {;M_Lagandre3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z * (5 * z*z - 3) / 2 + c)
  |z| < p1
  }

gtc31 {;M_Lagandre4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(35 * z*z - 30) + 3) / 8 + c)
  |z| < p1
  }

gtc32 {;M_Lagandre5 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(63 * z*z - 70) + 15 ) / 8 + c)
  |z| < p1
  }

gtc33 {;M_Lagandre6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1((z*z*(z*z*(231 * z*z - 315)  + 105 ) - 5) / 16 + c)
  |z| < p1
  }

gtc34 {;M_Lagandre7 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(z* (z*z*(z*z*(429 * z*z - 693) + 315) - 35 ) / 16 + c)
  |z| < p1
  }

gtc35 {;J_TchebychevC2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z-2))
  |z| < p1
  }

gtc36 {;J_TchebychevC3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*z*(z*z-3))
  |z| < p1
  }

gtc37 {;J_TchebychevC4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-4)+2))
  |z| < p1
  }

gtc38 {;J_TchebychevC5 - modified by Gedeon Peteri 
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-5)+5))
  |z| < p1
  }

gtc39 {;J_TchebychevC6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-6)+9)-2))
  |z| < p1
  }

gtc40 {;J_TchebychevC7 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-7)+14)-7))
  |z| < p1
  }

gtc41 {;J_TchebychevS2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z-1))
  |z| < p1
  }

gtc42 {;J_TchebychevS3 - modified by Gedeon Peteri  
  z = c = pixel:
  z = fn1(c*z*(z*z-2))
  |z| < p1
  }

gtc43 {;J_TchebychevS4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-3)+1))
  |z| < p1
  }

gtc44 {;J_TchebychevS5 - modified by Gedeon Peteri 
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-4)+3))
  |z| < p1
  }

gtc45 {;J_TchebychevS6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-5)+6)-1))
  |z| < p1
  }

gtc46 {;J_TchebychevS7 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-6)+10)-4))
  |z| < p1
  }

gtc47 {;J_TchebychevT2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(2*z*z-1))
  |z| < p1
  }

gtc48 {;J_TchebychevT3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*z*(4*z*z-3))
  |z| < p1
  }

gtc49 {;J_TchebychevT4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(8*z*z+8)+1))
  |z| < p1
  }

gtc50 {;J_TchebychevT5 - modified by Gedeon Peteri    
  z = c = pixel:
  z = fn1(c*(z*(z*z*(16*z*z-20)+5)))
  |z| < p1
  }

gtc51 {;J_TchebychevT6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(32*z*z-48)+18)-1))
  |z| < p1
  }

gtc52 {;J_TchebychevT7 - modified by Gedeon Peteri     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(64*z*z-112)+56)-7))
  |z| < p1
  }

gtc53 {;J_TchebychevU2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(4*z*z-1))
  |z| < p1
  }

gtc54 {;J_TchebychevU3 - modified by Gedeon Peteri    
  z = c = pixel:
  z = fn1(c*z*(8*z*z-4))
  |z| < p1
  }

gtc55 {;J_TchebychevU4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(16*z*z-12)+1))
  |z| < p1
  }

gtc56 {;J_TchebychevU5 - modified by Gedeon Peteri    
  z = c = pixel:
  z = fn1(c*z*(z*z*(32*z*z-32)+6))
  |z| < p1
  }

gtc57 {;J_TchebychevU6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(64*z*z-80)+24)-1))
  |z| < p1
  }

gtc58 {;J_TchebychevU7 - modified by Gedeon Peteri     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(128*z*z-192)+80)-8))
  |z| < p1
  }

gtc59 {;M_TchebychevC2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z-2))
  |z| < p1
  }

gtc60 {;M_TchebychevC3 - modified by Gedeon Peteri   
  z = c = pixel:
  z = fn1(c*z*(z*z-3))
  |z| < p1
  }

gtc61 {;M_TchebychevC4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-4)+2))
  |z| < p1
  }

gtc62 {;M_TchebychevC5 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-5)+5))
  |z| < p1
  }

gtc63 {;M_TchebychevC6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-6)+9)-2))
  |z| < p1
  }

gtc64 {;M_TchebychevC7 - modified by Gedeon Peteri     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-7)+14)-7))
  |z| < p1
  }

gtc65 {;M_TchebychevS2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z-1))
  |z| < p1
  }

gtc66 {;M_TchebychevS3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*z*(z*z-2))
  |z| < p1
  }

gtc67 {;M_TchebychevS4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z-3)+1))
  |z| < p1
  }

gtc68 {;M_TchebychevS5 - modified by Gedeon Peteri    
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z-4)+3))
  |z| < p1
  }

gtc69 {;M_TchebychevS6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(z*z-5)+6)-1))
  |z| < p1
  }

gtc70 {;M_TchebychevS7 - modified by Gedeon Peteri     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(z*z-6)+10)-4))
  |z| < p1
  }

gtc71 {;M_TchebychevT2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(2*z*z-1))
  |z| < p1
  }

gtc72 {;M_TchebychevT3 - modified by Gedeon Peteri   
  z = c = pixel:
  z = fn1(c*z*(4*z*z-3))
  |z| < p1
  }

gtc73 {;M_TchebychevT4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(8*z*z+8)+1))
  |z| < p1
  }

gtc74 {;M_TchebychevT5 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*(z*z*(16*z*z-20)+5)))
  |z| < p1
  }

gtc75 {;M_TchebychevT6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(32*z*z-48)+18)-1))
  |z| < p1
  }

gtc76 {;M_TchebychevT7 - modified by Gedeon Peteri     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(64*z*z-112)+56)-7))
  |z| < p1
  }

gtc77 {;M_TchebychevU2 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(4*z*z-1))
  |z| < p1
  }

gtc78 {;M_TchebychevU3 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*z*(8*z*z-4))
  |z| < p1
  }

gtc79 {;M_TchebychevU4 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(16*z*z-12)+1))
  |z| < p1
  }

gtc80 {;M_TchebychevU5 - modified by Gedeon Peteri    
  z = c = pixel:
  z = fn1(c*z*(z*z*(32*z*z-32)+6))
  |z| < p1
  }

gtc81 {;M_TchebychevU6 - modified by Gedeon Peteri
  z = c = pixel:
  z = fn1(c*(z*z*(z*z*(64*z*z-80)+24)-1))
  |z| < p1
  }

gtc82 {;M_TchebychevU7 - modified by Gedeon Peteri     
  z = c = pixel:
  z = fn1(c*z*(z*z*(z*z*(128*z*z-192)+80)-8))
  |z| < p1
  }

