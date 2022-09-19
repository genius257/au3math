#include-once

#cs
# Produces Indeterminate Number value.
# @see https://www.codeproject.com/Articles/824516/Concept-of-NaN-IND-INF-and-DEN source material for producing #IND
#ce
Func _Math_ind()
    Local $lnIND = DllStructCreate("ULONG[2]")
    DllStructSetData($lnIND, 1, 0x00000000, 1)
    DllStructSetData($lnIND, 1, 0xfff80000, 2)
    Return DllStructGetData(DllStructCreate("DOUBLE", DllStructGetPtr($lnIND)), 1)
EndFunc
