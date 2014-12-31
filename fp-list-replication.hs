f :: Int -> [Int] -> [Int]
f n _
    | n <= 0 = []
f _ []          = []
f n (x:xs)    = replicate n x ++ (f n xs)

-- This part handles I/O and can be used as-is. Do not modify.
main :: IO()
main = getContents >>=
            mapM_ print. (\(n:arr) -> f n arr). map read. words
