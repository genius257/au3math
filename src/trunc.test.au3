#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "trunc.au3"

assertSame($MATH_NEGATIVE_INFINITY, _Math_trunc($MATH_NEGATIVE_INFINITY))
assertSame(-1, _Math_trunc("-1.123"))
assertSame(-0, _Math_trunc(-0.123))
assertSame(-0, _Math_trunc(-0))
assertSame(0, _Math_trunc(0))
assertSame(0, _Math_trunc(0.123))
assertSame(13, _Math_trunc(13.37))
assertSame(42, _Math_trunc(42.84))
assertSame($MATH_POSITIVE_INFINITY, _Math_trunc($MATH_POSITIVE_INFINITY))
