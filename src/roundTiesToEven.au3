#include-once
#include "pow.au3"

#cs
# Eeturns the value of a number rounded, using the "Ties to even" strategy.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/internals/math-fround.js source
#ce
Func _Math_roundTiesToEven($n)
    Local Static $EPSILON = _Math_pow(2, -52)

    return $n + 1 / $EPSILON - 1 / $EPSILON
EndFunc
