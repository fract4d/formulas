Path: unixg.ubc.ca!van-bc!ddsw1!news.mcs.net!godot.cc.duq.edu!toads.pgh.pa.us!news.pgh.net!newsfeed.pitt.edu!dsinc!netnews.upenn.edu!mipg.upenn.edu!dewey
From: dewey@mipg.upenn.edu (Dewey Odhner)
Newsgroups: sci.fractals
Subject: Shadow Circles of Dragonbat
Date: 13 Sep 1995 13:41:25 GMT
Organization: University of Pennsylvania
Lines: 16
Distribution: world
Message-ID: <436n25$3ut@netnews.upenn.edu>
NNTP-Posting-Host: picard.mipg.upenn.edu
 
shadowcircles      {; Dewey Odhner
  reset=1920 type=formula formulafile=dewey.frm formulaname=Dragonbat
  passes=2
  center-mag=+0.27641583779262500/+0.46244936087850660/2211.582
  params=0/0/0/0/0/0 float=y maxiter=9999 inside=0 logmap=97
  colors=000COt<62>wqtwqtwps<70>UCLTBKTBKTBK<60>kBCkCCjCD<51>OeW
  }
 
; formula:
 
Dragonbat(XAXIS) {; Dewey Odhner
  c = Pixel, z = Sqr(Pixel)+Pixel:
   z = Sqr(Sqr(z)+c)-c
   c = -c
    LastSqr <= 4
  }
