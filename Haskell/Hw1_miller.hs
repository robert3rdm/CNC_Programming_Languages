--	I have done a first reading of the first 3 chapters. I have completed 1-5 (all)  of the Haskell Homwork Assignment 1. 


-- Task 1) "it" is the present value of whatever was called last. and it can be operated on as a value. Let is the interpreters way of allowing you to define functions without writing them into a file that is run. They are not stored and are unique to the current GHCI session.
-- Task 2) They all come out as Integers except the ones that fail due to syntax errors.
-- Task 3)double only takes one argument and two are given so fails
-- double takes square as an argument but square doesnt get an argument so fails
-- the type for 2 cannot be interpreted and comes on as a literal with no type so fails.
-- Task 4) 
module FirstScript where

import Data.List

--  The value size is an integer (Integer), defined to be
--	the sum of twelve and thirteen.

size :: Integer
size = 12 + 13

--	The function to square and integer.

square ::Integer -> Integer
square n = n*n

--	The funciton to double an integer.

double :: Integer -> Integer
double n = 2*n

--	An example using double, square and size.

example :: Integer
example = double (size - square (2+2))

--	The function to cube and integer.

cube :: Integer -> Integer
cube n = n*n*n

--	The functions that allows double and square to work together

squaredub :: Integer -> Integer
squaredub n = square (double n)

dubsquare :: Integer -> Integer
dubsquare n = double (square n)


-- 3.9 ThreeDifferent Funtion we get FALSE with an input of "3 4 3" because we said that no two of the three inputs can be the same.

threeDifferent :: Integer -> Integer -> Integer -> Bool
threeDifferent n m p = (n /= p) && (m /= p) && (n /= m)

-- 3.11
-- A) threeEqual (2+3) 5 (11 `div` 2)
--		true && 5 (11 div 2)
--		true && 5 (5)
--		true && true
--		true

-- 3.12 skipped

-- 3.17 Define the Function Char to Number

charToNum :: Char -> Int
charToNum ch 
	|('0'<= ch) && ('9'>= ch) = fromEnum ch - 48
	|otherwise = 0

-- 3.18 on Three Lines

onThreeLines :: String -> String -> String -> String
onThreeLines a b c  = (a ++ "\n" ++ b ++ "\n" ++ c ++ "\n")

-- 3.20 Average three

averageThree :: Integer -> Integer -> Integer -> Float
averageThree a b c = (fromIntegral(a + b + c)/ 3)
avgThreeInt a b c = floor(averageThree a b c)

-- 3.20 How many above average
howManyAboveAverage :: Integer -> Integer -> Integer -> Integer
howManyAboveAverage a b c
	|((a >= (avgThreeInt a b c)) && (b <= (avgThreeInt a b c)) && (c <= (avgThreeInt a b c))) || ((a <= (avgThreeInt a b c)) && (b >= (avgThreeInt a b c)) && (c <= (avgThreeInt a b c ))) || ((a <= (avgThreeInt a b c)) && (b <= (avgThreeInt a b c)) && (c >= (avgThreeInt a b c))) = 1
	|((a >= (avgThreeInt a b c)) && (b >= (avgThreeInt a b c)) && (c >= (avgThreeInt a b c))) = 3
	|otherwise = 2

-- better solution

numAboveAvg :: Integer -> Integer -> Integer -> Integer
numAboveAvg a b c 
	|(sort [a, b, c])!!1 > avgThreeInt a b c = 2
	|(sort [a, b, c])!!1 <= avgThreeInt a b c = 1
	|otherwise = 0

--3.21 Skip need to inquire about quick check

-- 3.22 Number NDRoots

numberNDroots :: Float -> Float -> Float -> Integer
numberNDroots a b c 
	|b^2 > 4.0*a*c = 2
	|b^2 == 4.0*a*c = 1
	|b^2 < 4.0*a*c = 0
