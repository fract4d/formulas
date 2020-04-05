hints { ;Don't even try without fpu , nwtnwt is the best one 
       }

MandNwtX {
  ; Note that floating-point is required to make this compute accurately
  z = pixel , Root = 1:
   f=z*z+pixel;
   z = ((f-1) * z^f + Root) / (f * z^(f-1));
    .001 <= |z^f - Root|
  }

MandNwtM{; 
  ; Note that floating-point is required to make this compute accurately
  z = pixel , Root = 1:
   f=z*z+pixel;
   z = ((pixel-1) * f^pixel + Root) / (pixel * f^(pixel-1));
    .001 <= |f^pixel - Root|
  }

NwtMand2 {; 
  ; Note that floating-point is required to make this compute accurately
  z = pixel , Root = 1:
   f = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
   z=z*z+f;
    .001 <= |z^p1 - Root|
  }
NwtMand3 {; 
  ; Note that floating-point is required to make this compute accurately
   f=pixel ,z=pixel, Root = 1:
   f = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
   z=f*f+pixel;
    .001 <= |z^p1 - Root|
  }
NwtMandM {; 
  ; Note that floating-point is required to make this compute accurately
  z = pixel , Root = 1:
   f = ((pixel-1) * z^pixel + Root) / (pixel * z^(pixel-1));
   z=f*f+pixel;
    .001 <= |z^pixel - Root|
  }

MandMand {; 
  ; Note that floating-point is required to make this compute accurately
   f=pixel ,z=pixel:
   f=z*z+pixel;
   z=f*f+pixel;
   |f|<=4}
  }
MandMnzpwr {;shit xept p1=2 
  ; Note that floating-point is required to make this compute accurately
   f=pixel ,z=pixel:
   f=z^p1+pixel;
   z=f*f+pixel;
   |f|<=4}
  }

ManzNwt {; 
  ; Note that floating-point is required to make this compute accurately
  z = pixel , Root = 1:
   f=z^p2+pixel;
   z = ((p1-1) * f^p1 + Root) / (p1 * f^(p1-1));
    .001 <= |f^p1 - Root|
  }

NwtNwt {;p1=k*p2 k=1,2,3,...   fn1,fn2=recip,ident  rest 4u to test
  ; Note that floating-point is required to make this compute accurately
  f=fn1(pixel) ,z = fn2(pixel) , Root = 1:
   f = ((p1-1) * z^p1 + Root) / (p1 * z^(p1-1));
   z = ((p2-1) * f^p2 + Root) / (p2 * f^(p2-1));
    .001 <= |f^p2 - Root|
  }

NwtNwtNwt {;p1=k*p2 k=1,2,3,...   fn1,fn2=recip,ident  rest 4u to test
  ; Note that floating-point is required to make this compute accurately
  f=fn1(pixel) ,z = fn2(pixel) ,g = fn3(pixel) , 
  u=real(p1) ,v=imag(p1) , Root = 1:
   g = ((u-1) * z^u + Root) / (u * z^(u-1));
   f = ((v-1) * g^v + Root) / (v * g^(v-1));
   z = ((p2-1) * f^p2 + Root) / (p2 * f^(p2-1));
    .001 <= |f^p2 - Root|
  }

