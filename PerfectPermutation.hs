-- -- Link to Problem : https://codeforces.com/problemset/problem/233/A

main :: IO ()
main = interact $ solve . read

pairup :: [Int] -> [(Int, Int)]
pairup (x:y:xy) = (x,y) : pairup xy
pairup [] = [] --base case 

solve :: Int -> String
solve n
  | even n    = unwords $ map show $ perfectPermutation n
  | otherwise = "-1"

perfectPermutation :: Int -> [Int]
perfectPermutation n = concatMap (\(a, b) -> [b, a]) $ pairup [1..n]
