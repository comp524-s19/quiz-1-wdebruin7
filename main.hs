finalGrade:: [Int] -> [Int] -> Int
getSumTop:: [Int]->[Int] -> Int
getSumBot:: [Int] -> Int

getSumBot x = 
    if (length x) == 0
        then 0
        else (x!!0) + getSumBot(drop 1 x)

getSumTop x y = 
    if (length x) == 0
        then 0
        else (x!!0 * y!!0) + getSumTop (drop 1 x) (drop 1 y)


finalGrade x y = (getSumTop x y) `div` (getSumBot y)
