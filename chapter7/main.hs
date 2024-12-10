module Main where

import System.Random (mkStdGen, random, StdGen)

data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)
-- Circle 是构造器，它接受三个 Float 类型的参数，返回一个 Shape 类型的值。
-- Rectangle 也是构造器，它接受四个 Float 类型的参数，返回一个 Shape 类型的值。
-- Circle 和 Rectangle 都是值构造器，它们的类型是 Shape -> Shape。

data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
                     , phoneNumber :: String
                     , flavor :: String
                     } deriving (Show)

main :: IO()
main = do
    -- 第七章 "构造我们自己的类型和类型类" --偷懒把8,9 关于IO的 略过了
    print "Hello Chapter7"

    let area :: Shape -> Float
        area (Circle _ _ r) = pi * r ^ 2
        area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

    print (area (Circle 10 20 10))
    print (area (Rectangle 0 0 100 100))

    print (Circle 10 20 5)

    print (map (Circle 10 20) [4,5,6,6])

    let guy = Person "Buddy" "Finklestein" 43 184.2 "526-2928" "Chocolate"
    print guy

    -- random 
    print (random (mkStdGen 100) :: (Int, StdGen))

    print (random (mkStdGen 100) :: (Float, StdGen))

    let a = random (mkStdGen 100) :: (Int, StdGen)
    print (a)
