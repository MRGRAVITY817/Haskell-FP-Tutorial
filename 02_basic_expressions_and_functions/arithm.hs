-- arithm.hs
module Arithm where

-- Basic Arithmetics

-- addition (plus)
xAdd = 1 + 1
-- subtraction (minus)
xSub = 1 - 1
-- multiplication (asterisk)
xMul = 2 * 2
-- fractal division (slash)
xFDiv = 2 / 4
-- integral division, round down (divide)
xDiv = div 20 (-6)
-- remainder for modular division (modulo)
xMod = mod 10 (-4)
-- integral division, round towards zero (quotient)
xQuot = quot 20 (-6)
-- remainder for division (remainder)
xRem = rem 10 (-4)


-- negative numbers
-- using minus sign is a syntactic sugar for 'negate'
xNegative = 2000 + (-1234)
xNegate = 2000 + (negate 1234)