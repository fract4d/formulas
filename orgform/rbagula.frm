Path: unixg.ubc.ca!van-bc!io.org!winternet.com!uunet!in1.uu.net!news.mathworks.com!newsfeed.internetmci.com!btnet!dispatch.news.demon.net!demon!mail2news.demon.co.uk!longevb.demon.co.uk
From: John de Rivaz <John@longevb.demon.co.uk>
Newsgroups: sci.fractals
Subject: Bagula has got a PC and Fractint
Date: Sun, 08 Oct 1995 15:00:40 GMT
Organization: Myorganisation
Lines: 83
Message-ID: <43736047wnr@longevb.demon.co.uk>
Reply-To: John@longevb.demon.co.uk
X-NNTP-Posting-Host: longevb.demon.co.uk
X-Broken-Date: Sunday, Oct 08, 1995 15.00.40
X-Newsreader: Newswin Alpha 0.7
 
Roger Bagula has recently got a PC and a copy of Fractint. here are the 
first formula files he wrote:
 
monkey(XAXIS) {; rlbagula
  ; 
  z = Pixel:  ; 
   z = 1/(z*sin(1/z)+pixel)
   z = Sqr(z)
    LastSqr <= 4          ; Use LastSqr instead of recalculating
  }
 
 
monkey2(XAXIS) {; rlbagula
  ; 
  z = Pixel:  ; 
   z = 1/(sqr(z)*sin(1/sqr(z))+pixel)
   
    LastSqr <= 16         ; Use LastSqr instead of recalculating
  }
monkey2i(XAXIS) {; rlbagula
  ; 
  z = Pixel:  ; 
   z = (sqr(z)*sin(1/sqr(z))+pixel)
   
    LastSqr <= 16         ; Use LastSqr instead of recalculating
  }
 
monkey3i(XAXIS) {; rlbagula
  ; 
  z = Pixel:  ; 
   z = (z*sqr(z)*sin(1/(z*sqr(z)))+pixel)
   
    LastSqr <= 16         ; Use LastSqr instead of recalculating
  }
monkey4i(XAXIS) {; rlbagula
  ; 
  z = Pixel:  ; 
   z = (sqr(sqr(z))*sin(1/sqr(sqr(z)))+pixel)
   
    LastSqr <= 16         ; Use LastSqr instead of recalculating
  }
 
F_turtle(XAXIS) {; R.L.Bagula
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z+1/z):  ; Start with z**2 to initialize LastSqr
   z = z + Pixel
   z = Sqr(z)
    LastSqr <= 16         ; Use LastSqr instead of recalculating
  }
F_turtle2(XAXIS) {; R.L.Bagula
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z+1/z):  ; Start with z**2 to initialize LastSqr
   z = z + Pixel
   z=sqr(z+1/z)
    LastSqr <= 16         ; Use LastSqr instead of recalculating
  }
a_sct(XAXIS) {; R.L.Bagula
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z+sqr(pixel)/z):  ; Start with z**2 to initialize 
LastSqr
   z = z + Pixel
   z=sqr(z+sqr(pixel)/z)
    LastSqr <= 16         ; Use LastSqr instead of recalculating
  }
atest(XAXIS) {; R.L.Bagula
  ; Classical fractal showing LastSqr speedup
  z = Pixel, z = Sqr(z+1/z):  ; Start with z**2 to initialize LastSqr
   z = z + 1/Pixel
   z = Sqr(z)
    LastSqr <= 16         ; Use LastSqr instead of recalculating}
 
 
 
 
-- 
Sincerely,     ****************************************       
               * Publisher of        Longevity Report *
John de Rivaz  *                     Fractal Report   *
               *          details on request          *
               ****************************************
**** What is the point of life if it ends in death? ****
 
