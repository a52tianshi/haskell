module Main where

main :: IO()
main = do
    let lucky :: Int -> String
        lucky 7 = "Lucky number seven!"
        lucky x = "Sorry, you're out of luck, pal!"


    print (lucky 7)
    print (lucky 8)
    let factorial :: Integer -> Integer
        factorial n = product [1..n]
    print (factorial 1)
    print (factorial (-99)) -- 1
    let first :: (Int,Int ,Int) -> Int
        first (x :: Int ,_,_) = x::Int

    print (first (4,2,3)) -- output 4


    -- 列表 模式匹配
    let xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]
    let a = [a+b | (a,b) <- xs]
    print a

    -- 定义个函数
    let tell :: (Show a) => [a] -> String
        tell [] = "The list is empty"
        tell [x] = "The list has one element: " ++ show x
        tell [x,y] = "The list has two elements: " ++ show x ++ " and " ++ show y
        tell (x:y:z:[]) = "This list has three elements: " ++ show x ++ " and " ++ show y ++ " and " ++ show z
        tell (x:y:z:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

    let l = []::[]Int
    print (tell l)
    print (tell [1])
    print (tell [1,2])
    print (tell [1,2,3])
    print (tell [1,2,3,4])
    print (tell [True , False])

    --As 模式 (as pattern)  todo
