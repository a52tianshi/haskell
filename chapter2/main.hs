module Main where

import Data.Typeable
import Distribution.Backpack.PreModuleShape (PreModuleShape(preModShapeProvides))

main :: IO()
main = do
    -- 第二章 "相信类型" 
    print "Hello Chapter2"

    -- 打印 'a' 的类型
    print (typeOf 'a')
    -- 打印 "hello" 的类型
    print (typeOf "hello")
    -- 打印 tuple 的类型   (Bool,Char,[Char],Float,Int)
    print (typeOf (True,'a',"hello",3.14 :: Float,1::Int))
    -- 打印 函数的类型
    let removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]
    print (removeNonUppercase "IdontLIKEFROGS")
    print (typeOf (removeNonUppercase "IdontLIKEFROGS"))
    print (typeOf removeNonUppercase)
    let addThree :: Int -> Int -> Int -> Int
        addThree x y z = x + y + z
    print (addThree 1 2 3)
    print (typeOf addThree) -- Int -> Int -> Int -> Int


    -- 测试函数
    let factorial :: Integer -> Integer
        factorial n = product [1..n]
    print (factorial 50)

    let circumference :: Float -> Float
        circumference r = 2 * pi * r

    print (circumference 4.0)

    let circumference' :: Double -> Double
        circumference' r = 2 * pi * r

    print (circumference' 4.0)

    -- 测试类型变量
    -- 报错 print (typeOf head) typeOf 需要一个具体的值作为输入，而不是一个多态的函数。
    print (head [4,5,6])
    print (head "hello")
    print (typeOf (head [4::Int,5,6]))

    -- 测试类型类
    -- Haskell 的 类型类 (Type Classes) 是一种抽象机制，用于定义一组行为（函数），然后可以让不同的类型实现这些行为。它类似于面向对象语言中的“接口”或“协议”。

    -- Ord 类型类
    -- Ord 类型类用于比较大小。它定义了一些函数，如 >、<、>=、<=、== 和 /=，用于比较两个值的大小。
    print (5 `compare` 3) -- GT
    print (compare "hello" "world")  -- LT

    -- Bounded 类型类
    -- Bounded 类型类用于限制类型的上限和下限。它定义了两个函数，minBound 和 maxBound，分别返回类型的最小值和最大值。
    print (minBound :: Int)
    print (maxBound :: Int)
    print (minBound :: Char)
    print (maxBound :: Char) -- '\1114111'
    -- Unicode 码点：Unicode 为全世界的文字和符号定义了唯一的编号，每个编号称为“码点” (code point)。码点的范围是从 0 到 1114111，即十六进制 0x10FFFF。
    -- Haskell 字符表示：Haskell 中的字符类型 Char 实际上表示一个 Unicode 码点，可以直接写 'a' 或用转义形式 \ 加数字表示（如 \97 表示 'a'，因为其码点是 97）。
    print (minBound :: Bool)
    print (maxBound :: Bool)

    -- 数字转换
    print (fromIntegral (length [1,2,3,4]) + 3.2)
