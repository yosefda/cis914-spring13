type Peg = String
type Move = (Peg, Peg)

-- Given the number of discs and names for the three pegs, hanoi
-- should return a list of moves to be performed to move the stack of
-- discs from the first peg to the second
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]

-- base case: no dics
hanoi 0 _ _ _ = []

-- base case: 1 disc to move
-- simply just move that disc from pegA to pegB
hanoi 1 sourcePeg destPeg tempPeg = [(sourcePeg, destPeg)]

-- recursive case: n discs to move
hanoi n sourcePeg destPeg tempPeg = hanoi (n-1) sourcePeg tempPeg destPeg ++ hanoi 1 sourcePeg destPeg tempPeg ++ hanoi (n-1) tempPeg destPeg sourcePeg

