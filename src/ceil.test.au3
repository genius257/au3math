#include "../au3pm/au3unit/testCase.au3"
#include "ceil.au3"
#include "constants.au3"

assertSame($MATH_NEGATIVE_INFINITY, _Math_ceil($MATH_NEGATIVE_INFINITY))
assertSame(-7, _Math_ceil(-7.004))
assertSame(-4, _Math_ceil(-4))
assertSame(0, _Math_ceil(-0.95))
assertSame(0, _Math_ceil(-0))
assertSame(0, _Math_ceil(0))
assertSame(1, _Math_ceil(0.95))
assertSame(4, _Math_ceil(4))
assertSame(8, _Math_ceil(7.004))
assertSame($MATH_POSITIVE_INFINITY, _Math_ceil($MATH_POSITIVE_INFINITY))
