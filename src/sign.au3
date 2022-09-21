#include-once

Func _Math_sign($x)
    Local $n = +$x
    Return ( $n = 0 Or Not ( $n = $n ) ) ? $n : ( $n < 0 ? -1 : 1 )
EndFunc
