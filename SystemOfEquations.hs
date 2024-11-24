-- Link to Problem : https://codeforces.com/problemset/problem/214/A

import Control.Monad (guard)

solve :: Int -> Int -> Int
solve n m = length $ do
    a <- [0..floor . sqrt . fromIntegral $ n]
    let b1 = n - a^2
    let b2 = m - a
    guard (b1 >= 0 && b2 >= 0 && b1^2 + a == m && a^2 + b1 == n)
    return (a, b1)

main :: IO ()
main = do
    input <- getLine
    let [n, m] = map read $ words input
    print $ solve n m
