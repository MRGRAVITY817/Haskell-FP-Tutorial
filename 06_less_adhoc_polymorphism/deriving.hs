module Deriving where

data Month = Jan | Feb | March | April deriving (Eq, Show)
-- you can only make instance for one typeclass.

instance Ord Month where
  compare Jan Jan = EQ
  compare Jan _   = GT
  compare _   Jan = LT
  compare _   _   = EQ