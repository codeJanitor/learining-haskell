f :: Int -> [Int] -> [Int]
f n arr = [ take n (repeat x) | x <- arr] 

-- This part handles I/O and can be used as-is. Do not modify.
main :: IO()
main = getContents >>=
            mapM_ print. (\(n:arr) -> f n arr). map read. words