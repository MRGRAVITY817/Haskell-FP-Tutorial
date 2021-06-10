-- parenth.hs
module Parenth where

-- use '$' sign to pack all the right terms in parentheses
-- those 2 below are the same
withoutDollarSign = (2^) (2 + 2)
withDollarSign = (2^) $ 2 + 2