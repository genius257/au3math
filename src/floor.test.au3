#include "../au3pm/au3unit/testCase.au3"
#include "floor.au3"
#include "constants.au3"

assertSame($MATH_NEGATIVE_INFINITY, _Math_floor($MATH_NEGATIVE_INFINITY))
assertSame(-46, _Math_floor(-45.95))
assertSame(-46, _Math_floor(-45.05))
assertSame(-0, _Math_floor(-0))
assertSame(0, _Math_floor(0))
assertSame(4, _Math_floor(4))
assertSame(45, _Math_floor(45.05))
assertSame(45, _Math_floor(45.95))
assertSame($MATH_POSITIVE_INFINITY, _Math_floor($MATH_POSITIVE_INFINITY))
