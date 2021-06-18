module Exercise1 where

-- 1
data TisAnInteger = TisAn Integer
instance Eq TisAnInteger where
  (==) (TisAn a) (TisAn a') = a == a'

-- 2
data TwoIntegers = Two Integer Integer
instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') = a == a' && b == b'

-- 3 
data StringOrInt = TisAnInt Int | TisAString String
instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt a') = (==) a a'
  (==) (TisAString a) (TisAString a') = (==) a a'
  (==) _ _ = False

-- 4
data Pair a = Pair a a
instance Eq a => Eq (Pair a) where
  (==) (Pair v x) (Pair v' x') = v == v' && x == x'

-- 5
data Tuple a b = Tuple a b
instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'

-- 6
data Which a = ThisOne a | ThatOne a
instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne x) (ThatOne x') = x == x'
  (==) _ _ = False

-- 7
data EitherOr a b = Hello a | Goodbye b
instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello x') = (==) x x'
  (==) (Goodbye x) (Goodbye x') = (==) x x'
  (==) _ _ = False