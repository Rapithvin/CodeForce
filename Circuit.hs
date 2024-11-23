-- Link to Problem : https://codeforces.com/contest/2032/problem/A
main :: IO ()
main = interact process

data TCase = TCase Int [Int] deriving (Show)
solve :: TCase -> (Int, Int)
solve (TCase n switches) = (minOn, maxOn) where
        ones = sum switches
        minOn = mod ones 2
        maxOn = min ones (2 * n - ones)


process :: String -> String
process =  unlines . map ((formatOutput . solve) . tCaseParser) . pairUp . drop 1 . lines

formatOutput :: (Int, Int) -> String
formatOutput (a, b) = show a ++ " " ++ show b

pairUp :: [String] -> [(String, String)]
pairUp (x:y:xs) = (x, y) : pairUp xs
pairUp _        = []

tCaseParser :: (String, String) -> TCase
tCaseParser (n, switches) = TCase (read n :: Int) (map read $ words switches)