import Data.Char

-- convert positive Integers to a list of digits
toDigits :: Integer -> [Integer]
toDigits i 
  | i == 0 = []
  | i < 0 = []
  | otherwise = [toInteger (digitToInt x) | x <- show i]
  

-- convert positive Integers to a reversed list of digits
toDigitsRev :: Integer -> [Integer]
toDigitsRev i = reverse (toDigits i)

-- double every other number beginning from the right
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther xs = reverse (doDoubleEveryOther (reverse xs))

-- helper function that actually performs double every other element
doDoubleEveryOther :: [Integer] -> [Integer]
doDoubleEveryOther [] = []
doDoubleEveryOther (x1:[]) = x1:[]
doDoubleEveryOther (x1:x2:[]) = x1:(x2*2):[]
doDoubleEveryOther (x1:x2:xs) = x1:(x2*2):doDoubleEveryOther(xs)

-- sum of the original numbers of the digits
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits xss = sum (concat [toDigits xs | xs <- xss])

-- validate cc numbers
validate :: Integer -> Bool
validate n = if sumDigits (doubleEveryOther (toDigits n)) `mod` 10 == 0 then True else False
 