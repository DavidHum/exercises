module MultipleSum where


multThreeFive :: Int -> Bool
multThreeFive n
    | (mod n 3) == 0 || (mod n 5) == 0 = True
    | (mod n 3) == 0 = True
    | (mod n 5) == 0 = True
    | otherwise = False

multipleSum :: Int -> Int -> Int
multipleSum currenNumber total = 
    sum . take currenNumber . filter multThreeFive . enumFrom $ 1