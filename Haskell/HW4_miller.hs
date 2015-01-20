-- Robert Miller Haskell HW 4
-- quit working after about 4 hours
-- completed about 40%
-- Chapter 6


-- Chapter 7

--7.8
elemNum :: Integer -> [Integer] -> Integer
elemNum _ [] = 0
elemNum y (x:xs) 
	| y== x = 1+ elemNum y xs
	| otherwise = elemNum y xs


--rewrite


--7.9

unique :: [Integer] -> [Integer]
unique [] = []
unique xs = [x | x <-xs, elemNum x xs == 1]

--rewrite

--7.10




--Chapter 10

--10.9
add :: Integer -> Integer -> Integer
add x y = x+y

iter :: Integer -> (a -> a) -> a -> a 
iter 0 f x = x
iter n f x = f (iter(n-1) f x)


--Rewrite


-- Chapter 11

-- 11.17

curry3 :: ((a,b,c) -> d) -> (a->b->c->d)
curry3 x y z w = x(y, z, w)


uncurry3 :: (a -> b -> c -> d) -> ((a,b,c) -> d)
uncurry3 x(y,z,w) = x y z w

-- 11.18

curryList :: ([a] -> d) -> (a -> [a] -> d)
curryList x xs y = x(y,xs)

uncurryList :: (a -> [a] -> d) -> ([a] -> d)
uncurryList x xs y = y(x,xs)


--ComposeList



--rewrite



--groupByN



--group



--groupBy
