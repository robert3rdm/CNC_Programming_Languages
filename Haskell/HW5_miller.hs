--Robert Miller  Homework 5 Haskell

--14.4, 14.5 div by zero exception is caught by default
data Expr = Lit Integer |
						Add Expr Expr |
						Sub Expr Expr |
						Mul Expr Expr |
						Div Expr Expr

eval :: Expr -> Integer
eval (Lit n)     = n
eval (Add e1 e2) = (eval e1) + (eval e2)
eval (Sub e1 e2) = (eval e1) - (eval e2)
eval (Mul e1 e2) = (eval e1) * (eval e2)
eval (Div e1 e2) = (eval e1) `div` (eval e2)


show' :: Expr -> String
show' (Lit n) = show n
show' (Add e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"
show' (Sub e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"
show' (Mul e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"
show' (Div e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"

size :: Expr -> Integer
size (Lit n) = 0
size (Add e1 e2) = 1 + size e1 + size e2
size (Sub e1 e2) = 1 + size e1 + size e2
size (Mul e1 e2) = 1 + size e1 + size e2
size (Div e1 e2) = 1 + size e1 + size e2

--14.6 to add mod i would add mod to data ops and another circumstance for eval' show'' and size'

data Expr' = Lit' Integer |
						Op Ops Expr' Expr'

data Ops = Add' | Sub' | Mul' | Div'

eval' :: Expr' -> Integer
eval' (Lit' n)     = n
eval' (Op Add' e1 e2) = (eval' e1) + (eval' e2)
eval' (Op Sub' e1 e2) = (eval' e1) - (eval' e2)
eval' (Op Mul' e1 e2) = (eval' e1) * (eval' e2)
eval' (Op Div' e1 e2) = (eval' e1) `div` (eval' e2)

show'' :: Expr' -> String
show'' (Lit' n) = show n
show'' (Op Add' e1 e2) = "(" ++ show'' e1 ++ "+" ++ show'' e2 ++ ")"
show'' (Op Sub' e1 e2) = "(" ++ show'' e1 ++ "+" ++ show'' e2 ++ ")"
show'' (Op Mul' e1 e2) = "(" ++ show'' e1 ++ "+" ++ show'' e2 ++ ")"
show'' (Op Div' e1 e2) = "(" ++ show'' e1 ++ "+" ++ show'' e2 ++ ")"

size' :: Expr' -> Integer
size' (Lit' n) = 0
size' (Op Add' e1 e2) = 1 + size' e1 + size' e2
size' (Op Sub' e1 e2) = 1 + size' e1 + size' e2
size' (Op Mul' e1 e2) = 1 + size' e1 + size' e2
size' (Op Div' e1 e2) = 1 + size' e1 + size' e2

--14.8
data Expr'' = Lit'' Integer |
						  Expr'' :+: Expr'' |
							Expr'' :-: Expr''

eval'' :: Expr'' -> Integer
eval'' (Lit'' n)     = n
eval'' (e1 :+: e2) = (eval'' e1) + (eval'' e2)
eval'' (e1 :-: e2) = (eval'' e1) - (eval'' e2)

show''' :: Expr'' -> String
show''' (Lit'' n) = show n
show''' (e1 :+: e2) = "(" ++ show''' e1 ++ "+" ++ show''' e2 ++ ")"
show''' (e1 :-: e2) = "(" ++ show''' e1 ++ "+" ++ show''' e2 ++ ")"

size'' :: Expr'' -> Integer
size'' (Lit'' n) = 0
size'' (e1 :+: e2) = 1 + size'' e1 + size'' e2
size'' (e1 :-: e2) = 1 + size'' e1 + size'' e2


--14.10

data NTree = NilT |
						 Node Integer NTree NTree

elemTree :: NTree -> Integer -> Bool
elemTree NilT x = False
elemTree (Node n t1 t2) x 
				|n == x = True
				|n /= x = elemTree t1 x && elemTree t2 x
				|otherwise = False

--14.13

qSort :: [Integer] -> [Integer]
qSort [] = []
qSort (x:xs) = qSort [y | y<-xs, y <=x] ++ [x] ++ qSort [y | y<- xs, y>x]

collapse :: NTree -> [Integer]
collapse NilT = []
collapse (Node n t1 t2) = collapse t1 ++ [n] ++ collapse t2

sort :: NTree -> [Integer]
sort NilT = []
sort (Node n t1 t2) = qSort (collapse(Node n t1 t2))

--14.15









