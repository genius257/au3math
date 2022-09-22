#include-once

#cs
# Checks if a variable's base type is numeric.
#ce
Func _Math_isNumber($x)
    Return IsNumber($x) ? True : False
EndFunc
