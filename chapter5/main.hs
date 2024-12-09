module Main where

import Func

main :: IO()
main = do
    -- 第五章 "高阶函数" 
    print "Hello Chapter5"
    -- https://zh.wikipedia.org/wiki/%E6%9F%AF%E9%87%8C%E5%8C%96 柯里化 currying

    print (devideByTen 200)
    print (devideByTen 999)
    print (applyTwice (+3) 10)
    print (applyTwice devideByTen 1234) -- applyTwice devideByTen 1234 =  (devideByTen (devideByTen 1234)) 太强了

    print (zipWith' (+) [1,2,3] [4,5,6])
    print (zipWith' max [1,2,3] [4,5,6])

    print (map (+3) [1,5,3,1,6])

    print (filter (>3) [1,5,3,2,1,6,4,3,2,1])

    print (filter (<15) (filter even [1..20]))

    -- 用 takeWhile 来取得小于 10000 的所有奇数的立方和
    print (sum (takeWhile (<10000) (filter odd (map (^3) [1..]))))
    print (sum (takeWhile (<10000) [x^3 | x <- [1..], odd x]))

    -- Collatz sequence
    print (chain 10)
    print (chain 1)

    --lambda 就是一次性的匿名函数


    -- sum'
    print (sum' [3,5,2,1])


    -- 函数应用符号 $
    -- 用 $ 来避免括号
    print (sum (filter (>10) (map (*2) [2..10])))
    print (map ($ 3) [(4+), (10*), (^2), sqrt])
    -- . 函数组合
    print (sum . replicate 5 $ max 6.7 8.9)