-- Funciones de alto nivel
-- Ejemplo de la funcion map
--

duplicar x =  x * 2


-- Ejemplo de listas intensionales
-- Los primeros n numeros de la serie de fibonacci
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
























