potencia:: Integer -> Integer -> Integer
potencia m 0 = 1
potencia m n = m * (potencia m (n-1))

factorial::Integer->Integer
factorial 0 = 1
factorial 1 = 1
factorial n = n * (factorial (n-1))
