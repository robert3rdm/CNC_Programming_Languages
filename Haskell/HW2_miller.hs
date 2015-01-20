-- Completed about half of the problems and did not get to the problems in the second section.


-- Haskell homework 2 Robert Miller



--4.17 rangeProduct Solution

rangeProduct :: Integer -> Integer -> Integer
rangeProduct n m 
	| m>n = 0
	| m==n = n
	| n>m = rangeProduct (n) (m+1)*m
	| otherwise = error "Only positive Intgers please!"

-- 4.18 fac using rangeProduct
fac :: Integer -> Integer
fac n
	|n>0 = rangeProduct n 1
	|otherwise = error "Please input a positive Integer"

--4.19 Multiplication definition

mult :: Integer -> Integer -> Integer
mult n m
	|m > 0 =  mult (n) (m-1) +n
	|m==0 = 0

-- 4.20 Square Root definition

--sqrt :: Integer -> Integer
--sqrt n
-- | n== 0 = 0
-- | n<1 = (

-- 4.21

--f :: Integer -> Integer
--f n
-- |max n 0 = 0
-- |max n 1 = 44
-- |max n 2 = 17
-- where
-- f 0 = 0
-- f 1 = 44
-- f 2 = 17
-- f _ = 0

 --4.31 find max common factor of two integers

--cfac :: Integer -> Integer -> Integer
--cfac n m
--	|n==0 = 0
--	|n==m = n
--	|n>m = n/m
--	|m>n = m/n
--	|otherwise 0


-- 4.32
powerOfTwo :: Integer -> Integer
powerOfTwo n = 2^n

raise :: Integer -> Integer
raise n
	|n==1 = 2
	|n `mod` 2 == 0 = raise (n-1) *2
	|n `mod` 2 == 1 = raise (n-2) *2*2

-- 5.5

data Shape = Circle Float |
	Rectangle Float Float |
	Triangle Float Float Float
	deriving (Eq, Ord, Show)

perimeter :: Shape -> Float
perimeter (Circle r) = 2*pi*r
perimeter (Rectangle l w) = 2*l + 2*w
perimeter (Triangle a b c) = a+b+c

-- 5.7
isRound :: Shape -> Bool
isRound (Circle _) = True 
isRound (Rectangle _ _ ) = False
isRound (Triangle _ _ _) = False

area :: Shape -> Float
area (Triangle a b c)  = sqrt(((a+b+c)/2)*(((a+b+c)/2)-a)*(((a+b+c)/2)-b)*(((a+b+c)/2)-c))

-- 5.9

-- tim sheard

-- problem 1
--3,   even, even 3
--Num, Ord, Bool

--head, [1,2,3], [1,2,3] head
--[a]      Num       Num  

-- prob 2

floater :: Float -> Float
floater x = x+1
--A)
type1 :: (Float -> Float) -> Float
type1 x = floater 3


--B)
type2 :: Float -> (Float -> Float)
type2 x = x







