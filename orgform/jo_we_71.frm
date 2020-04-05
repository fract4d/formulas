
JoWe55c36a { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + p2
|z| <=p3
 }

JoWe55c36b { ; from a modified Carr-formula
            ; 6/1997 JoWeber CIS [100424,35]
c=z1=z2=p1/pixel:
z1=fn2(fn1(z1) + c) + p2
z2=fn4(fn3(z2) + c) + p2
z=z1*whitesq+z2*(whitesq==0)
|z| <=p3
 }

JoWe55d36a { ; from a modified Carr-formula
            ; 5/1999 JoWeber CIS [100424,35]
c=z=p1/pixel:
z1=fn1(z) + c
z=fn2(z1) + c/p2
|z| <=p3
 }
