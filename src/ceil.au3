#include-once
#include "isInfinite.au3"

#cs
# Rounds up and returns the smaller integer greater than or equal to the given number.
#ce
Func _Math_ceil($x)
    If _Math_isInfinite($x) Then Return $x
    Return Ceiling($x)
EndFunc
