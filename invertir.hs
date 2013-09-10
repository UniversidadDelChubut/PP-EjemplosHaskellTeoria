invertir::[a]->[a]
invertir [] = []
invertir x = last x : invertir (init x)

