#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "cbrt.au3"
#include "constants.au3"

assertSame($MATH_NEGATIVE_INFINITY, _Math_cbrt($MATH_NEGATIVE_INFINITY))
assertSame(-1.0, _Math_cbrt(-1))
assertSame(-0.0, _Math_cbrt(-0.0))
assertSame(1.0, _Math_cbrt(1))
assertSame(1.2599210498948732, _Math_cbrt(2))
assertSame($MATH_POSITIVE_INFINITY, _Math_cbrt($MATH_POSITIVE_INFINITY))
