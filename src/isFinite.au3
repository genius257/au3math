#include-once
#include "isDen.au3"
#include "isInd.au3"
#include "isInfinite.au3"
#include "isNan.au3"
#include "isNumber.au3"

Func _Math_isFinite($vValue)
    Return _Math_isNumber($vValue) And Not (_Math_isInfinite($vValue) Or _Math_isNan($vValue) Or _Math_isInd($vValue) Or _Math_isDen($vValue))
EndFunc
