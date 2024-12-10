module Main where

import Data.List
import Func

main :: IO()
main = do
    -- 第六章 "模块"
    print "Hello Chapter6"

    --https://hoogle.haskell.org/

    -- Data.List
    print (length . nub $ [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9])
    print (sort [8,5,3,2,1,6,4,2])
    print (sort "This will be sorted soon")
    print (sort ["Bye","Hello","World"])
    print (tails "party")

    print (encode 3 "Heeeeey")
    print (decode 3 "Heeeeey")

    let ori = "I'm a little teapot"
    let enc = encode 3 ori
    let dec = decode 3 enc
    print ori
    print enc
    print dec

