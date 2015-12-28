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