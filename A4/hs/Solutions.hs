-----------------------
-- John Doe
-- 31.02.2020
-----------------------
-- Edit the lines above with your name and the submission date.

strWords :: String -> [String]
strWords _ = error "Implement this function"

piglatinize :: String -> String
piglatinize _ = error "Implement this function"

apprPi :: Double
apprPi = 
  let
    nextPi :: Double -> Double
    nextPi _ = error "Implement this function"
  in
    error "Implement this function"


-- Implement:

-- the update function for option 1

update :: (Eq k) => (v -> v) -> v -> k -> [(k, v)] -> [(k, v)]
update _ _ _ _ = error "Implement this function"

-- OR

-- the uniques, countOccurrences and countWords functions for option 2

uniques :: (Eq a) => [a] -> [a]
uniques _ = error "Implement this function"

countOccurrences :: (Eq a) => a -> [a] -> Int
countOccurrences _ _ = error "Implement this function"

countWords :: String -> [(String, Int)]
countWords _ = error "Implement this function"

-- Implement topWords using the functions implemented above.

topWords :: Int -> String -> [(String, Int)]
topWords _ _ = error "Implement this function"