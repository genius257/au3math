#include-once
#include "log.au3"

#cs
# Returns the natural logarithm (base e) of 1 + x, where x is the argument.
#ce
Func _Math_log1p($x)
    Local $n = +$x
    Return $n > -1e-8 And $n < 1e-8 ? $n - $n * $n / 2 : _Math_log(1 + $n)
EndFunc
