triangle :: Int -> [Int]
triangle num = triangle' 1 num 0

triangle' :: Int -> Int -> Int -> [Int]
triangle' current num total = if current < num then current + total : triangle' (current + 1) num (current + total)
                                              else [total + num]
                                                   
ntri :: Int -> Int
ntri num = ntri' 1 num

ntri' :: Int -> Int -> Int 
ntri' current num = if current < num then current + ntri' (current + 1) num
                                          else num
                                               
divs :: Int -> [Int]
divs num = [x | x <- [1..num], num `mod` x == 0]

p12 :: [Int]
p12 = take 1 (filter (\x -> length (divs x) > 500) (map ntri [1..]))

  
  
  --take 1 (filter (\x -> x `mod` 3 == 0) (map ntri [1..]))
