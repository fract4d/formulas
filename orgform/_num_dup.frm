

001 {
  z = c = pixel:
  z = ((z*z+1)^2 / z*(z*z-1)) * c
  |z| <=1
  ;SOURCE: kgnew.frm
}


002 {
  z = c = pixel:
  z = (z*z-1)^2 / z*(z*z+1) * c
  |z| <=1
  ;SOURCE: kgnew.frm
}


003 {
  z = c = pixel:
  z = (z*z+1)^(-2) / z*(z*z-1) * c
  |z| <=1
  ;SOURCE: kgnew.frm
}


004 {
  z = c = pixel:
  z = (z*z+1)^2 / z*(c*z-1) * c
  |z| <=1
  ;SOURCE: kgnew.frm
}


005 {
  z = c = pixel:
  z = (z*z-1)^2 / z*(c*c+1) * c
  |z| <=1
  ;SOURCE: kgnew.frm
}


006 {
  z = c = pixel:
  z = (z*z+1)^(-2) / z*(c*c-1) * z
  |z| <=1
  ;SOURCE: kgnew.frm
}


007 {
  z = c = pixel:
  z = (z*z+1)^2 / z*(z*z-1) / c
  |z| <=1
  ;SOURCE: kgnew.frm
}


008 {
  z = c = pixel:
  z = (z*z-1)^2 / z*(z*z+1) ^ c
  |z| <=1
  ;SOURCE: kgnew.frm
}


009 {
  z = c = pixel:
  z = (z*z+1)^(-2) / z*(z*z-1)
  |z| <=1
  ;SOURCE: kgnew.frm
}


010 {
  z = c = pixel:
  z = (z*z+1)^2 / z*(c*z-1) / c
  |z| <=1
  ;SOURCE: kgnew.frm
}


011 {
  z = c = pixel:
  z = (z*z-1)^2 / z*(c*c+1) + c
  |z| <=1
  ;SOURCE: kgnew.frm
}


012 {
  z = c = pixel:
  z = (z*z+1)^(-2) / z*(c*c-1) - z
  |z| <=1
  ;SOURCE: kgnew.frm
}


013 {
  z = c = pixel:
  z = (z*z + (c-1))^2 / (2*z + (c-1))
  |z| <=1
  ;SOURCE: kgnew.frm
}


014 {
  z = c = pixel:
  z = (z*z - (c-1))^2 / (2*z + (c-1))
  |z| <=1
  ;SOURCE: kgnew.frm
}


015 {
  z = c = pixel:
  z = (z*z + (c+1))^2 / (2*z + (c-1))
  |z| <=1
  ;SOURCE: kgnew.frm
}


016 {
  z = c = pixel:
  z = (z*z + (c-1))^2 / (2*z - (c-1))
  |z| <=1
  ;SOURCE: kgnew.frm
}


017 {
  z = c = pixel:
  z = (z*z + (c-1))^2 / (2*z - (c+1))
  |z| <=1
  ;SOURCE: kgnew.frm
}

