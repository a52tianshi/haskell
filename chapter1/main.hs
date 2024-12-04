module Main where

main :: IO()
main = do
    -- 似乎语法改了 ghc 9  let 要放到 do 里面
    print "Hello"


    print(2 + 15)
    print(5 * 100)

    print(True && False)

    print(True || False)
    print(5 /= 4)

    print(min 9 7)

    print(92 `div` 10)


    -- define a function
    let doubleMe x = x + x

    print(doubleMe 9)

    let lostNumbers = [4,8,15,16,23,42]
    let a = lostNumbers ++ [4,5]
    print lostNumbers
    print a
    -- haskell list is homogenous
    let rightTriangles = [ (a,b,c) | c <- [1..30], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]  
    print rightTriangles
    let acuteTriangle = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 > c^2]
    print acuteTriangle
    let obtuseTriangle = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 < c^2 && a + b > c]
    print obtuseTriangle
    -- 函数式编程思路: 先取一个集合, 然后对集合中的每个元素进行操作, 最后返回一个新的集合
    -- 有点像 map reduce: 先取一个初始的集合并将其变形,随后持续地对这个集合进行变形,直到得到最终结果

