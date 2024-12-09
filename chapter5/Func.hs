module Func(devideByTen,applyTwice,zipWith',chain, sum') where 

devideByTen :: (Floating a) => a -> a
devideByTen = (/10)

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

--Collatz sequence
-- 从一个数开始，如果它是偶数，那么下一个数就是它除以 2，如果它是奇数，那么下一个数就是 3 乘以它再加 1。然后对下一个数重复这个过程。
-- 通过这样的方式，我们会得到一个序列，它以 1 结尾。这个序列被称为考拉兹序列。

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n = n:chain (n*3 + 1)

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs
-- sum' = foldl (+) 0