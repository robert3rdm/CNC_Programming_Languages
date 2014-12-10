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


