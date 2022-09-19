#include-once
#include "constants.au3"

#cs 
# Checks if value is Denormalized/Subnormal Number.
# @see https://www.codeproject.com/Articles/824516/Concept-of-NaN-IND-INF-and-DEN source material for producing #DEN
#ce
Func _Math_isDen($x)
    Return $MATH_DEN = $x
EndFunc
