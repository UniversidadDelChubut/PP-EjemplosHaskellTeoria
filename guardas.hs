sign x |  x >  0        =   1
       |  x == 0        =   0
       |  x <  0        =  -1



bhaskara a b c = (
    ((-b) + sqrt(b^2 - 4 * a * c)) / (2 * a), 
    ((-b) - sqrt(b^2 - 4 * a * c)) / (2 * a)
    )


bhaskara2 a b c = (
    (minusb + sqRootOfDelta) / twoTimesA, 
    (minusb - sqRootOfDelta) / twoTimesA
    )
    where 
        sqRootOfDelta = sqrt(b^2 - 4 * a * c)
        twoTimesA = 2 * a
        minusb = (-b)
