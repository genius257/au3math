#include-once
#include "isFinite.au3"
#include "log.au3"
#include "sqrt.au3"

#cs
# Returns the inverse hyperbolic sine of a number.
# @see https://github.com/zloirock/core-js/blob/cd7f789805ee3b1e08b230e071ac4e3d49b912ba/packages/core-js/modules/es.math.asinh.js source
#ce
Func _Math_asinh($x)
    Local $n = +$x
    Return (Not _Math_isFinite($n) Or $n = 0) ? $n : $n < 0 ? -_Math_asinh(-$n) : _Math_log($n + _Math_sqrt($n * $n + 1))
EndFunc
