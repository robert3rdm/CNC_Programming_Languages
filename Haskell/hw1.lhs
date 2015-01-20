------------------------------------------------------------------------------
Haskell Winter 2015
Homework 1
------------------------------------------------------------------------------

Fill in the requested code in this file, test your mapping functions, and
cnc_submit hw1.lhs for your homework.



> import Prelude hiding (Maybe(..), Either(..))

1.  Use the following Error data type for this problem.

> data Maybe a = Nothing | Just a

  (a) Give the type and Haskell code for an appropriate map function over
      the (Maybe a) type.

> --mapMaybe ::

> --mapMaybe
> --mapMaybe

  (b) Declare the Maybe type constructor as an instance of the Functor class.




2.  Use the following Error data type for this problem.

> data Error a = Ok a | Error String


  (a) Give the type and Haskell code for an appropriate map function over
      the (Error a) type.

> --mapError ::

> --mapError
> --mapError

  (b) Declare the Error type constructor as an instance of the Functor class.




3. Consider the following binary tree data type.

> data Tree a = Nil | Node a (Tree a) (Tree a)
> 	    deriving (Eq, Read,Show)

  (a) Give the type and function definition for mapT, the map function over the
      binary tree data type above

> --mapT :: 

> --mapT 
> --mapT 

  (b) Declare the Tree type constructor as an instance of the Functor class.




4. Consider the following General Tree data type.

> data GTree a = GNil | GNode a [GTree a]


  (a) Give a type and a code definition for a mapGT function over GTree. Give
      the most general type.


> --mapGT :: 

> --mapGT 
> --mapGT 

  (b) Declare the Gtree type constructor as an instance of the Functor class.




5. Consider the (Either a b) data type.

> data Either a b = Left a | Right b


  (a) Give a type and a code definition for a mapEither function over the
      Either type. This is a bit tricky because the Either type constructor
      takes two parameters and the mapEither will only work on one of them.
      Recall that (Either a b) means ((Either a) b).

> --mapEither :: 

> --mapEither 
> --mapEither 


  (b) Declare the (Either a) type constructor as an instance of the Functor
      class.




-----------------------------------------------------------------------------
-- Testing
-----------------------------------------------------------------------------
