#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "sinh.au3"

assertSame($MATH_NEGATIVE_INFINITY, _Math_sinh($MATH_NEGATIVE_INFINITY))
assertSame(-0.0, _Math_sinh(-0))
assertSame(0.0, _Math_sinh(0))
assertSame(1.1752011936438014, _Math_sinh(1))
assertSame($MATH_POSITIVE_INFINITY, _Math_sinh($MATH_POSITIVE_INFINITY))
