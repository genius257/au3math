#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "hypot.au3"
#include "isNan.au3"

assertSame(5.0, _Math_hypot(3, 4))
assertSame(7.0710678118654755, _Math_hypot(3, 4, 5))
assertSame(0.0, _Math_hypot())
assertTrue(_Math_isNan(_Math_hypot($MATH_NAN)))
assertSame($MATH_POSITIVE_INFINITY, _Math_hypot($MATH_NAN, $MATH_POSITIVE_INFINITY))
assertSame(7.0710678118654755, _Math_hypot(3, 4, "5")); // 7.0710678118654755, +'5' => 5
assertSame(3.0, _Math_hypot(-3)); // 3, the same as Math.abs(-3)
