#include-once
#include "isFinite.au3"
#include "isNumber.au3"

#cs
# Shifts right by pushing zeros in from the left, and let the rightmost bits fall off.
# Right shift acts like js >>> operator.
# @see https://www.autoitscript.com/forum/topic/148495-solved-how-to-zero-fill-right-shift/?do=findComment&comment=1056079 source
#ce
Func _Math_bitLogicalShift($dVal, $iShift)
    If _Math_isNumber($dVal) And Not _Math_isFinite($dVal) Then Return 0
    If Not _Math_isNumber($dVal) Then $dVal = Number($dVal, 2)

    If $iShift > 31 Or $iShift < -31 Then
        $dVal = 0 ; Out of range shift values always return zero.
    ElseIf $iShift > 0 And BitAND($dVal, 0x80000000) = 0x80000000 Then
        $dVal = BitXor(BitShift($dVal, 1), 0x80000000)
        $iShift -= 1
    EndIf

    Return BitShift($dVal, $iShift)
EndFunc
