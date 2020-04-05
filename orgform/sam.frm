
;========================================================================
;Date:    Wed, 12 Feb 1992 12:32:27 EST
;From: "Bruno"
;Subject: sam.frm
;X-Topic: Entry #3191 of LISTS.FRAC-L
;To: "LISTS.FRAC-L.3191"
;
;Posted on 12 Feb 1992 at 03:29:01 by BrownVM Mailer (103837)
;
;sam.frm
;
;Date:         Wed, 12 Feb 1992 09:10:56 MEZ
;Reply-To:     'FRACTAL' discussion list <FRAC-L@GITVM1.BITNET>
;From:         QOC62@DMSWWU1A.BITNET
;
;to whom it may concern
;sam.frm:            (does anybody know the source of this formulafile?)
;

   Sam_0(XAXIS) = {
      z = Pixel:  z = z^z - pixel
   }

   Sam_1(XAXIS) = {
      z = Pixel: z = z^(-z) - pixel
   }

   Sam_2(XAXIS) = {
      z = Pixel: z = z^(1/z) - pixel
   }

   Sam_3(XAXIS) = {
      z = Pixel: z = z^z^z - pixel
   }

   Sam_4(XAXIS) = {
      z = Pixel: z = z^(z^(1/z)) - pixel
   }
   Sam_5(XAXIS) = {
      z = Pixel: z = z^2.718281828 + pixel
   }

   Sam_6(XYAXIS) = {
      z = Pixel: z = z*cos(z) - pixel
   }

   Sam_7(XAXIS) = {
      z = Pixel: z = z*sin(z) - pixel
   }

   Sam_8 = {
      z = Pixel: z = z^c
   }

   Sam_9(XYAXIS) = {
      z = Pixel: z = z*tanh(z)
   }

   Sam_10(XYAXIS) = {
      z = Pixel: z = sin(1/z)
   }

   Sam_11(XAXIS) = {;Try this with periodicity=none command line
      z = Pixel: z = sinh(1/z)
   }