module Main where

main :: IO()
main = do
print "Hello"


print(2 + 15)
print(5 * 100)

print(True && False)


print(5 /= 4)

print(min 9 7)

print(92 `div` 10)

let doubleMe x = x + x

print(doubleMe 45)

let lostNumbers = [4,8,15,16,23,42]
let a = lostNumbers ++ [4,5]
print(lostNumbers)
print(a)
let rightTriangles = [ (a,b,c) | c <- [1..30], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]  
print(rightTriangles)
