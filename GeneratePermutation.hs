main :: IO ()
main = interact $ dataOut . map solve . tail . dataIn
-- Model
type Tcase = Int
type Answ = [Int]
dataIn :: String -> [Tcase]
dataOut :: [Answ] -> String
solve :: Tcase -> Answ
--

dataIn  = map read . lines

dataOut = unlines . map (unwords . map show)

solve tcase
    | even tcase = [-1]
    | otherwise = evens ++ [1] ++ odds where
      evens = [x | x <- [2..tcase], even x]
      odds = [x | x <- [2..tcase], odd x]