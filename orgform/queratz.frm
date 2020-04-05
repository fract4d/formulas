3p1 {z=pixel: z=(pixel+p1*z*z*conj(z))/(pixel+p1*z*conj(z)),|z|<=10}
3jp1c {z=pixel: z=(p2+p1*z*z*conj(z))/(p2+p1*z*conj(z)),|z|<=10}

; fuaget se rest

4p1 {z=pixel: z=(pixel+p1*z*z*z*conj(z))/(pixel+p1*z*z*conj(z)),}
4jp1c {z=pixel: z=(p2+p1*z*z*z*conj(z))/(p2+p1*z*z*conj(z)),}
2.5p1 {z=pixel: z=(pixel+p1*z*z*z*conj(z)*conj(z))/(pixel+p1*z*z*conj(z)*conj(z)),|z|<=10}
2.5jp1c {z=pixel: z=(p2+p1*z*z*z*conj(z)*conj(z))/(p2+p1*z*z*conj(z)*conj(z)),|z|<=10}

3p1var {c=pixel+1/fn1(p2*fn2(pixel))+1/fn2(p2*fn1(pixel)),
   z=c:
   z=(c+p1*z*z*conj(z))/(c+p1*z*conj(z)),|z|<=10}
3jp1cvar {c=pixel+1/fn1(real(p1)*fn2(pixel))+1/fn2(real(p1)*fn1(pixel)), 
   z=c:
   z=(p2+imag(p1)*z*z*conj(z))/(p2+imag(p1)*z*conj(z)),|z|<=10}


comment = {3.. ist alles interessante drauf}




