#include-once
#include "abs.au3"
#include "exp.au3"
#include "expm1.au3"
#include "constants.au3"

#cs
# Returns the hyperbolic sine of a number.
# @see https://github.com/zloirock/core-js/blob/9fb376aee65cded45f2be33bd88b4d054b37fa41/packages/core-js/modules/es.math.sinh.js source
#ce
Func _Math_sinh($x)
    Local $n = +$x
    Return ( _Math_abs($n) < 1 ) ? ( _Math_expm1($n) - _Math_expm1(-$n) ) / 2 : ( _Math_exp($n - 1) - _Math_exp(-$n - 1)) * ($MATH_E / 2)
EndFunc
