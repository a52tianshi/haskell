module Main where

main :: IO()
main = do
    -- 第四章 "递归" 
    print "Hello Chapter4"


    let maximum' :: (Ord a) => [a] -> a
        maximum' [] = error "maximum of empty list"
        maximum' [x] = x
        maximum' (x:xs)
            | x > maxTail = x
            | otherwise = maxTail
            where maxTail = maximum' xs

    print (maximum' [1,2,3,4,5])


    let replicate' :: Int -> a -> [a]
        replicate' n x
            | n <= 0 = []
            | otherwise = x:replicate' (n-1) x

    print (replicate' 3 5)

    let take' :: Int -> [a] -> [a]
        take' n _
            | n <= 0 = []
        take' _ [] = []
        take' n (x:xs) = x : take' (n-1) xs

    print (take' 3 [5,4,3,2,1])

    let reverse' :: [a] -> [a]
        reverse' [] = []
        reverse' (x:xs) = reverse' xs ++ [x]

    print (reverse' [1,2,3,4,5])

    -- 无限列表
    let repeat' :: a -> [a]
        repeat' x = x:repeat' x

    print (take 5 (repeat' 3))

    -- print (repeat' 3) --无限打印 3

    --elem
    let elem' :: (Eq a) => a -> [a] -> Bool
        elem' a [] = False
        elem' a (x:xs)
            | a == x = True
            | otherwise = a `elem'` xs

    print (elem' 3 [1,2,3,4,5])

    -- quicksort
    let quicksort :: (Ord a) => [a] -> [a]
        quicksort [] = []
        quicksort (x:xs) =
            let smallerOrEqual = [a | a <- xs, a <= x]
                larger = [a | a <- xs, a > x]
            in quicksort smallerOrEqual ++ [x] ++ quicksort larger
        
    print (quicksort [10,2,5,3,1,6,7,4,2,3,4,8,9])