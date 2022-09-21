#include-once
#include "abs.au3"
#include "constants.au3"
#include "pow.au3"
#include "roundTiesToEven.au3"
#include "sign.au3"

#cs
# Returns the nearest 32-bit single precision float representation of a number.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/internals/math-fround.js source
#ce
Func _Math_fround($x)
    Local Static $EPSILON = _Math_pow(2, -52)
    Local Static $EPSILON32 = _Math_pow(2, -23)
    Local Static $MAX32 = _Math_pow(2, 127) * (2 - $EPSILON32);
    Local Static $MIN32 = _Math_pow(2, -126)

    Local $n = +$x
    Local $abs = _Math_abs($n)
    Local $sign = _Math_sign($n)
    Local $a, $result
    If ($abs < $MIN32) Then Return $sign * _Math_roundTiesToEven($abs / $MIN32 / $EPSILON32) * $MIN32 * $EPSILON32
    $a = (1 + $EPSILON32 / $EPSILON) * $abs
    $result = $a - ($a - $abs)
    If ($result > $MAX32 Or Not ($result = $result)) Then Return $sign * $MATH_POSITIVE_INFINITY
    return $sign * $result
EndFunc
