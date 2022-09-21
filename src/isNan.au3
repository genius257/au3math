#include-once

#cs
# Determines whether the passed value is NaN
# @see https://www.codeproject.com/Articles/824516/Concept-of-NaN-IND-INF-and-DEN source material for producing #NaN
#ce
Func _Math_isNan($x)
    If VarGetType($x) == "Double" Then
        $y = DllStructCreate("double")
        $z = DllStructCreate("long[2]", DllStructGetPtr($y))
        DllStructSetData($y, 1, $x)
        Return DllStructGetData($z, 1, 1) = 0x00000000 And DllStructGetData($z, 1, 2) = 0x7ff80000
    EndIf
    Return False
EndFunc
