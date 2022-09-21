#include-once
#include "constants.au3"

#cs
# Determines whether the passed value is negative zero.
# @see https://stackoverflow.com/a/39280486 source
#ce
Func _Math_isMinusZero($x)
    Return $x = 0 ? ( 1 / $x = $MATH_NEGATIVE_INFINITY ) : False
EndFunc
