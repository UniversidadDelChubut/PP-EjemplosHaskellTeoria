


--Simples
-- =======
suma x y = x + y
suma3 x y z = x + y + z
suma3bis x y z = x + suma y z
max3 x y z = max x (max y z)

--Tuplas
-- ======
esOrigen::(Float,Float) -> Bool
esOrigen (x, y) = x == 0 && y == 0 


--Patrones
-- ========
--xor::Bool -> Bool -> Bool
xor True x = not x
xor False x = x

--Recursion
-- =========
potencia:: Integer -> Integer -> Integer
potencia m 0 = 1
potencia m n = m * (potencia m (n-1))

factorial::Integer->Integer
factorial 0 = 1
factorial n = n * (factorial (n-1))

-- Lista
primerosNFactoriales n = [factorial x | x <- [0..n]] 

--Lista intensional
de5en5 n = take n de5en5inf
de5en5inf = [ x * 5 | x <- [1..]]


-- Listas Intensionales
-- ====================
-- Funciones de alto nivel
-- Ejemplo de la funcion map
--
duplicar x =  x * 2

-- Ejemplo de listas intensionales
-- Los primeros n numeros impares
impares n = take n [ x | x <-[0..] , odd x]

impares2::Int->[Int]
impares2 0 = []
impares2 n = impares2 (n-1) ++ [(n *2) -1]

impares3 n = [1,3..((n *2)-1)]
 
-- FelizDomingo
felizDomingo::Int->[String]
felizDomingo v = [ domingo i v | i <- [1..]]

domingo::Int->Int->String
domingo x n | mod x  n == 0  = "domingo"
            | mod x 10 == n  = "domingo"
            | otherwise      = show x 

--Ejemplo de recursion y listas intensionales
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = smallerSorted ++ [x] ++ biggerSorted
     where
          smallerSorted = quicksort [a | a <- xs, a <= x]
          biggerSorted  = quicksort [a | a <- xs, a > x]


quicksort2 l = small ++ [head l] ++ bigg
	where
          small = quicksort [a | a <- tail l, a <= head l]
          bigg  = quicksort [a | a <- tail l, a  > head l]


-- Guardas
-- =======

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


--Funciones de Orden Superior
applyTwice f x = f (f x)


