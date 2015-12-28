  
x :: Int
x = 3

smallestInt, biggestInt :: Int
smallestInt = minBound
biggestInt = maxBound

reallyBigInt :: Integer
reallyBigInt = 2^(2^(2^(2^2)))

numDigits :: Int
numDigits = length (show reallyBigInt)

doubleNum :: Double
doubleNum = 6.1234e-4

booleanVal :: Bool
booleanVal = True

myChar :: Char
myChar = 'ダ'

myString :: String
myString = "Hello world!"

ex1 = mod 19 3
ex2 = 19 `mod` 3 
ex3 = (-3) * (-7)

-- error because trying to add Double with Int
-- badArith1 = doubleNum + x

-- to add Double with Int
-- 1st solution
goodArith1 = round doubleNum + x

-- 2nd solution
goodArith2 = doubleNum + fromIntegral x

-- floating point division only
floatingPointDiv = doubleNum / 2

-- error because both are integer
--myDiv = numDigits / x

-- integer division only
integerDiv = numDigits `div` x

-- error because there's floating point
--erroredDiv = numDigits `div` doubleNum

status = True
result = if status then "Yes" else "No"

-- function definition by case (Prolog style)
sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

-- function definition using guards
hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3*n + 1
  
-- more contrived example
foo :: Integer -> Integer
foo 0 = 16
foo 1
  | "Haskell" > "C++" = 3
  | otherwise         = 4
foo n
  | n < 0           = 0
  | n `mod` 17 == 2 = -43
  | otherwise       = n + 3

isEven :: Integer -> Bool
isEven n
  | n `mod` 2 == 0 = True
  | otherwise      = False

hailstone2 :: Integer -> Integer
hailstone2 n
  | isEven n  = n `div` 2
  | otherwise = 3*n + 1


sumPair :: (Int, Int) -> Int
sumPair (x, y) = x + y

p :: (Int, Int)
p = (3, 4)

-- String and [Char] are the same
helloChar :: [Char]
helloChar = ['h', 'e', 'l', 'l', 'o']

helloString :: String
helloString = "hello"

-- generating a sequence of hailstone numbers
hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n)

-- pattern matching in lists
intListLength :: [Integer] -> Integer
intListLength [] = 0
intListLength (_:xs) = 1 + intListLength xs

-- list operations
myList = [1,2,3] ++ [4,5,6]
myNumbers = 13 : [1,2,4]
mySuperList = [[1,2,3],[1,1],[]]






