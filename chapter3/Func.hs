module Func(bmiTell,bmiTellBetter) where 
-- 哨兵模式
-- 哨兵模式是一种特殊的模式，它允许我们检查值是否符合某些特定的属性，并且在匹配成功时将值绑定到变量上。(if else 的语法糖)

bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"


bmiTellBetter :: Double -> Double -> String
bmiTellBetter weight height
    | bmi <= 18.5 = "You're underweight, you emo, you!"
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2