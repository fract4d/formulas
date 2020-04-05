;
;       These formulas are from Karl Geigl CIS 100327,156
;

   701 = {
   z = c = p1 / pixel:
   z = z^p2 + c^p2 + c
   z <= p1
}

   702 = {
   z = c = p1 / pixel:
   z = z^p2 - c^p2 + c
   z <= p1
}

   703 = {
   z = c = p1 / pixel:
   z = z^p2 * c^p2 + c
   z <= p1
}

   704 = {
   z = c = p1 / pixel:
   z = z^p2 / c^p2 + c
   z <= p1
};

   705 = {
   z =c = p2 / pixel:
   z = z^p1 + c^p2 + c
   z <= p2
}

   706 = {
   z = c = p2 / pixel:
   z = z^p1 - c^p2 + c
   z <= p2
}

   707 = {
   z = c = p2 / pixel:
   z = z^p1 * c^p2 + c
   z <= p2
}

   708 = {
   z = c = p2 / pixel:
   z = z^p1 / c^p2 + c
   z <= p2
}