#include-once
#include "log.au3"

#cs
# Returns the inverse hyperbolic tangent of a number.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/modules/es.math.atanh.js source
#ce
Func _Math_atanh($x)
    Local $n = +$x
    Return $n = 0 ? $n : _Math_log((1 + $n) / (1 - $n)) / 2
EndFunc
