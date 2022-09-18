#include-once

#cs
# Produces Not A Number value.
# @see https://www.codeproject.com/Articles/824516/Concept-of-NaN-IND-INF-and-DEN source material for producing #NaN
#ce
Func _Math_nan()
    Local $lnNAN = DllStructCreate("ULONG[2]")
    DllStructSetData($lnNAN, 1, 0x00000000, 1)
    DllStructSetData($lnNAN, 1, 0x7ff80000, 2)
    Return DllStructGetData(DllStructCreate("DOUBLE", DllStructGetPtr($lnNAN)), 1)
EndFunc
