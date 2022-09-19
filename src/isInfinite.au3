#include-once
#include "constants.au3"

#cs
# Determines whether the passed value is Infinite.
#ce
Func _Math_isInfinite($vValue)
    Return $vValue = $MATH_POSITIVE_INFINITY Or $vValue = $MATH_NEGATIVE_INFINITY
EndFunc
