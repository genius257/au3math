#include-once
#include "exp.au3"

#cs
# Returns e raised to the power of a number, subtracted by 1.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/internals/math-expm1.js source
#ce
Func _Math_expm1($x)
    Local $n = +$x
    return $n = 0 ? $n : ( ( $n > -1e-6 And $n < 1e-6 ) ? $n + $n * $n / 2 : _Math_exp($n) - 1 )
EndFunc
