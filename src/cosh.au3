#include-once
#include "abs.au3"
#include "constants.au3"
#include "expm1.au3"

#cs
# Returns the hyperbolic cosine of a number.
# @see https://www.autoitscript.com/forum/topic/170658-advanced-math-udf/ Hyperbolic.au3 source
#ce
Func _Math_cosh($x)
    Return ($MATH_E^$x + $MATH_E^(-$x))/2
EndFunc
