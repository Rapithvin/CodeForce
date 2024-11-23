-- Link to Problem : https://codeforces.com/problemset/problem/231/A

-- Example Input Output
-- Input
-- 3      - Number of Problems
-- 1 1 0  - Petya, Vasya, Tonya
-- 1 1 1  - ...
-- 1 0 0  - ...

-- Output
-- 2

main :: IO()
main = interact process

process :: String -> String
process =  show  . length . filter (2 <=) . map (sum . map read . words) . drop 1 . lines