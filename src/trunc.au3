#include-once
#include "ceil.au3"
#include "floor.au3"

#cs
# Returns the integer part of a number by removing any fractional digits.
# @see https://github.com/zloirock/core-js/blob/9fb376aee65cded45f2be33bd88b4d054b37fa41/packages/core-js/internals/math-trunc.js source
#ce
Func _Math_trunc($x)
    Local $n = +$x
    Return ( ( $n > 0 ) ? _Math_floor : _Math_ceil )($n)
EndFunc
