#include-once
#include "isInfinite.au3"

#cs
# Rounds down and returns the largest integer less than or equal to the given number.
#ce
Func _Math_floor($x)
    If _Math_isInfinite($x) Then Return $x
    Return Floor($x)
EndFunc
