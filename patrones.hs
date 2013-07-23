{-

-}

xor::Bool -> Bool -> Bool
xor True x = not x
xor False x = x
-- Se puede probar con:
-- Main> xor (False && 12 == 12) False || False
-- False

