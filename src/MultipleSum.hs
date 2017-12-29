module MultipleSum where


multThreeFive :: Int -> Bool
multThreeFive n
    | (mod n 3) == 0 = True
    | (mod n 5) == 0 = True
    | otherwise = False

multipleSum :: Int -> Int -> Int
multipleSum currenNumber total = 
    if currenNumber == 0
        then total
        else if (multThreeFive (currenNumber * 3) )
            then multipleSum (currenNumber - 1) (total + (currenNumber * 3) )
            else multipleSum (currenNumber - 1) total