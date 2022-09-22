#include-once
#include "exp.au3"
#include "expm1.au3"
#include "constants.au3"

#cs
# Returns the hyperbolic tangent of a number.
# @see https://github.com/zloirock/core-js/blob/9fb376aee65cded45f2be33bd88b4d054b37fa41/packages/core-js/modules/es.math.tanh.js source
#ce
Func _Math_tanh($x)
    Local $n = +$x
    Local $a = _Math_expm1($n)
    Local $b = _Math_expm1(-$n)
    return ( $a = $MATH_POSITIVE_INFINITY ) ? 1 : ( ( $b = $MATH_POSITIVE_INFINITY ) ? -1 : ( ($a - $b) / (_Math_exp($n) + _Math_exp(-$n)) ) )
EndFunc
