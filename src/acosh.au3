#include-once
#include "constants.au3"
#include "log.au3"
#include "log1p.au3"
#include "sqrt.au3"

#cs
# Returns the inverse hyperbolic cosine of a number.
# @see https://github.com/zloirock/core-js/blob/22762b1fb1dd2ea373128f2ec896d029fd611c40/packages/core-js/modules/es.math.acosh.js source
#ce
Func _Math_acosh($x)
    Local $n = +$x
    Return $n < 1 ? $MATH_NAN : $n > 94906265.62425156 ? _Math_log($n) + $MATH_LN2 : _Math_log1p($n - 1 + _Math_sqrt($n - 1) * _Math_sqrt($n + 1))
EndFunc
