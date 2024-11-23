-- Link to Problem : https://codeforces.com/problemset/problem/228/A
import Data.List (nub)
main :: IO()
main = interact $  show . (4 - ) .length . (nub :: [Int] -> [Int]) . map read . words