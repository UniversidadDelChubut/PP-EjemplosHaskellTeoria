potencia:: Integer -> Integer -> Integer
potencia m 0 = 1
potencia m n = m * (potencia m (n-1))

factorial::Integer->Integer
factorial 0 = 1
factorial n = n * (factorial (n-1))


primerosNFactoriales n = [factorial x | x <- [0..n]]


de5en5 n = take n de5en5inf
de5en5inf = [ x * 5 | x <- [1..]]
