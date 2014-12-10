-- Robert Miller Haskell HW 3
-- have skimmed ch 5, 6 , 7
import Data.Char

-- 5.15
-- This will produce a list of floating point values
-- from 0 up to 1 increasing by .1 at each step.
-- some of them will have a longer value since floats are not precise so may be off by a very small amount.

-- 5.16
--[2,3] contains 2 items. [[2,3]] has 1 element that is a list and that list contains 2 elements. the type is a list of lists.

-- 5.17
-- [2 .. 2] results in the list [2]. [2,7,.. 4] results in [2], [2,2 .. 2] gives an endless list of 2s.

-- 5.18

doubleAll :: [Integer] -> [Integer]
doubleAll n = [2 * m | m <- n]

--5.19

capitalize :: String -> String
capitalize str = [ toUpper x | x <- str]

capitalizeLetters :: String -> String
capitalizeLetters str = [toUpper x | x <- str, isLetter x]

--5.20

divisors ::  Integer -> [Integer]
divisors xs = [x | x <- [1 .. xs], xs `mod` x == 0]

isPrime :: Integer -> Bool
isPrime n 
	| (length)( divisors n)>2 = False
	| n <= 0 = False
	| n == 1 = False
	| otherwise = True


--5.21

matches :: Integer -> [Integer] -> [Integer]
matches n m = [l | l <- m, l==n]

elem1 :: Integer -> [Integer] -> Bool
elem1 n m
			|matches n m /= [] = True
			|otherwise = False

--5.22

--5.28
