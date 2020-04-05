0014 {
	z = pixel:
	z = sqr(pixel*z)+p2^z
}

0015 { ; greed-disaster
	z = pixel:
	z = p1*sqr(pixel*z)+p2^z
}

0016 { ; doubegg
	z = pixel:
	z = sqr(pixel/z)+p1^z
}

0017 { ; ermello
	z = pixel:
	z = sqr(pixel*z)+p1^z
}

0018 { 
	z = pixel:
	z = sqr(pixel*z)+z^p1
}

