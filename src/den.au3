#include-once

#cs
# Produces Denormalized/Subnormal value.
# @see https://www.codeproject.com/Articles/824516/Concept-of-NaN-IND-INF-and-DEN source material for producing #DEN
#ce
Func _Math_den()
    Local $lnDEN = DllStructCreate("ULONG[2]")
    DllStructSetData($lnDEN, 1, 0x00000001, 1)
    DllStructSetData($lnDEN, 1, 0x00000000, 2)
    Return DllStructGetData(DllStructCreate("DOUBLE", DllStructGetPtr($lnDEN)), 1)
EndFunc
