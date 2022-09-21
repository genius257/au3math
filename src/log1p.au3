#include-once
#include "log.au3"

#cs
# Returns the natural logarithm (base e) of 1 + x, where x is the argument.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/internals/math-log1p.js source
#ce
Func _Math_log1p($x)
    Local $n = +$x
    Return $n > -1e-8 And $n < 1e-8 ? $n - $n * $n / 2 : _Math_log(1 + $n)
EndFunc
