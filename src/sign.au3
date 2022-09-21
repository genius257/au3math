#include-once

#cs
# returns 1 or -1, indicating the sign of the number passed as argument. If the input is 0 or -0, it will be returned as-is.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/internals/math-sign.js source
#ce
Func _Math_sign($x)
    Local $n = +$x
    Return ( $n = 0 Or Not ( $n = $n ) ) ? $n : ( $n < 0 ? -1 : 1 )
EndFunc
