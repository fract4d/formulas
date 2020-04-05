From - Wed Jul 10 10:35:19 1996
Path: unixg.ubc.ca!van-bc!uniserve!oronet!news.acsu.buffalo.edu!news.drenet.dnd.ca!crc-news.doc.ca!nott!cunews!freenet-news.carleton.ca!FreeNet.Carleton.CA!ao950
From: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
Newsgroups: sci.fractals
Subject: Nother good formula
Date: 10 Jul 1996 05:47:58 GMT
Organization: The National Capital FreeNet
Lines: 38
Sender: ao950@freenet6.carleton.ca (Paul Derbyshire)
Message-ID: <4rvg6e$mmc@freenet-news.carleton.ca>
Reply-To: ao950@FreeNet.Carleton.CA (Paul Derbyshire)
NNTP-Posting-Host: freenet6.carleton.ca



FRACTINT lovers try this one:

Comment { Freely distributable, do not sell. By PGD.
          Twister4 formula, save it into novaexpo.frm. }

Twister4 {  ; p2 is inverse bailout, set to small nonzero number
            ; like 0.000001.
  z=pixel,
  c=p1:
  oz=z
  z2=z*z
  z3=z*z2
  z4=z*z3
  z5=z*z4
  z=(z5+z4-z2+3*z-1)/(4*z3-2*z+3)+c,
  |z|<127 && |oz-z|>p2
}


Comment { PAR file for formula Twister4. Put formula in a file named
          "novaexpo.par". By PGD. Freely distributable. }

Counterspirality!  { ;  
  reset=1821 type=formula formulafile=novaexpo.frm
  formulaname=Twister4 center-mag=-0.457227/0.0580113/0.477848
  params=0.5/0/1.0000000000000001e-005 float=y maxiter=500 inside=0
  logmap=yes periodicity=0
  colors=000iil<34>zzzzzzyzz<89>1LV0KU0KU0JT<29>10910900A<91>hhk
  }


--
    .*.  Where feelings are concerned, answers are rarely simple [GeneDeWeese]
 -()  <  When I go to the theater, I always go straight to the "bag and mix"
    `*'  bulk candy section...because variety is the spice of life... [me]
Paul Derbyshire ao950@freenet.carleton.ca, http://chat.carleton.ca/~pderbysh
