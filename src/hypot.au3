#include-once
#include "abs.au3"
#include "constants.au3"
#include "sqrt.au3"

#cs
# Returns the square root of the sum of squares of its arguments.
# @see https://github.com/zloirock/core-js/blob/954f0fb8732b1cc0a38676f72761fd0872fc764f/packages/core-js/modules/es.math.hypot.js source
#ce
Func _Math_hypot($value1 = Null, $value2 = Null, $value3 = Null, $value4 = Null, $value5 = Null, $value6 = Null, $value7 = Null, $value8 = Null, $value9 = Null, $value10 = Null)
    Local $sum = 0
    Local $i = 0
    Local $aLen = @NumParams
    Local $larg = 0
    Local $arg, $div
    While ($i < $aLen)
        $arg = _Math_abs(Eval("value"&($i+1)))
        $i += 1
        if ($larg < $arg) Then
            $div = $larg / $arg;
            $sum = $sum * $div * $div + 1;
            $larg = $arg;
        ElseIf ($arg > 0) Then
            $div = $arg / $larg;
            $sum += $div * $div;
        Else
            $sum += $arg;
        EndIf
    WEnd
    return $larg = $MATH_POSITIVE_INFINITY ? $MATH_POSITIVE_INFINITY : $larg * _Math_sqrt($sum);
EndFunc
