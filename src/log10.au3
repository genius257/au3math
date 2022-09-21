#include-once
#include "constants.au3"
#include "log.au3"

#cs
# Returns the base 10 logarithm of a number.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/internals/math-log10.js source
#ce
Func _Math_log10($x)
    Return _Math_log($x) * $MATH_LOG10E
EndFunc
