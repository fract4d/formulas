{ ; Based upon the Fractint formula of Paul Carlson
  ;   p1       = coordinates of the Julia set          
  ;   real(p2) = radius of the circles - this controls 
  ;              the size of the petals                
  ;   imag(p2)   Not Used                              
  ;   real(p3) = number of color ranges                
  ;   imag(p3) = number of colors in each color range  
    r = real(p2)
    im = imag(p2)
    r = r + r * im
    r2 = r * r
    f = 1 - 2 * im - im * im
    k = im * r + r * sqrt(f)  ; abs val of petal center (kk) 
    plsqd = 2 * r2 * f        ; petal length squared 
    w = pixel
    c = p1
    numranges = real(p3)
    colorsinrange = imag(p3)
    rangenum = 0
    i = 0 : 
    d = 0 
    w = w * w + c
    wr = real(w)
    wi = imag(w)
    c1 = (((wr-r) * (wr-r) + wi * wi) < r2)
    c2 = ((wr * wr + (wi+r) * (wi+r)) < r2)
    c3 = (((wr+r) * (wr+r) + wi * wi) < r2)
    c4 = ((wr * wr + (wi-r) * (wi-r)) < r2)
    IF (c1 && c4) 
        d = (wr-k) * (wr-k) + (wi-k) * (wi-k)
    ELSEIF (c1 && c2) 
        d = (wr-k) * (wr-k) + (wi+k) * (wi+k)
    ELSEIF (c2 && c3) 
        d = (wr+k) * (wr+k) + (wi+k) * (wi+k)
    ELSEIF (c3 && c4) 
        d = (wr+k) * (wr+k) + (wi-k) * (wi-k)
    ELSE
        d = 0
    ENDIF
    IF d > 0 
        index = colorsinrange * d / plsqd
        z = index + rangenum * colorsinrange + 1
    ENDIF
    rangenum = rangenum + 1
    IF rangenum == numranges 
        rangenum = 0
    ENDIF
    i = i + 1, z = z - i
    (d == 0) && (|w| < 1000)
}


