#include-once
#include "abs.au3"
#include "pow.au3"
#include "sign.au3"

#cs
# Returns the cube root of a number.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/modules/es.math.cbrt.js source
#ce
Func _Math_cbrt($x)
    Local $n = +$x
    Return _Math_sign($n) * _Math_pow(_Math_abs($n), 1 / 3)
EndFunc
