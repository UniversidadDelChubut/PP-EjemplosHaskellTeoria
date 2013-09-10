signo::Integer->Integer
signo x |  x >  0        =   1
       |  x == 0        =   0
       |  x <  0        =  -1

acotarAUnDigito n | n > 9 = 9
	| n < -9 = -9
	| otherwise = n


parabola::Double->Double
parabola x | x > 0 = x ^ 2
           | x < 0 = - (x ^ 2)
           | otherwise = 0


bhaskara::Double->Double->Double->(Double, Double)
bhaskara a b c = (
    ((-b) + sqrt(b^2 - 4 * a * c)) / (2 * a), 
    ((-b) - sqrt(b^2 - 4 * a * c)) / (2 * a)
    )


bhaskara2::Double->Double->Double->(Double, Double)
bhaskara2 a b c = (
    (minusb + sqRootOfDelta) / twoTimesA, 
    (minusb - sqRootOfDelta) / twoTimesA
    )
    where 
        sqRootOfDelta = sqrt(b^2 - 4 * a * c)
        twoTimesA = 2 * a
        minusb = (-b)
