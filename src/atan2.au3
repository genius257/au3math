#include-once
#include "atan.au3"
#include "constants.au3"
#include "floor.au3"
#include "isInfinite.au3"
#include "isMinusZero.au3"
#include "isNan.au3"

#cs
# Returns the angle in the plane (in radians) between the positive $x-axis and the ray from (0, 0) to the point ($x, $y).
# @see https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/atan2 Math.atan2(y, x) vs Math.atan(y / x) differences table
#ce
Func _Math_atan2($y, $x)
    If $x = $MATH_POSITIVE_INFINITY Then
        If $y = $MATH_POSITIVE_INFINITY Then Return $MATH_PI / 4
        If $y = $MATH_NEGATIVE_INFINITY Then Return -($MATH_PI / 4)
    EndIf
    If $x = $MATH_NEGATIVE_INFINITY Then
        If $y = $MATH_POSITIVE_INFINITY Then Return 3 * $MATH_PI / 4
        If $y = $MATH_NEGATIVE_INFINITY Then Return -(3 * $MATH_PI / 4)
        If $y > 0 Then Return $MATH_PI
        If $y < 0 Then Return -$MATH_PI
    EndIf
    If ( $x < 0 Or _Math_isMinusZero($x) ) And $y = 0 Then Return _Math_isMinusZero($y) ? -$MATH_PI : $MATH_PI
    If $x = 0 Then
        If _Math_isMinusZero($x) Then
            If $y > 0 Then Return $MATH_PI/2
            If $y < 0 Then Return -( $MATH_PI / 2 )
        Else
            If $y = 0 Then Return $y
        EndIf
    EndIf

    Return _Math_atan($y / $x)
EndFunc
