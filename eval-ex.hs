solve :: Double -> Double
solve x = calculateE x 10

calculateE :: Double -> Int -> Double
calculateE x 0 = 1
calculateE x 1 = x
calculateE x n = x^n / (fromIntegral (factorial n)) + calculateE x (n - 1)

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
