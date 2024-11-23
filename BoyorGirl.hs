-- Link to Problem : https://codeforces.com/problemset/problem/236/A
import Data.List (nub)
import Text.Read (Lexeme(Char))
solve :: Int -> String
solve n
        | even n = "IGNORE HIM!"
        | otherwise = "CHAT WITH HER!"

main :: IO()
main = interact $ solve . length . nub 