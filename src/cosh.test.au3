#include "../au3pm/au3unit/testCase.au3"
#include "cosh.au3"
#include "constants.au3"

assertSame($MATH_POSITIVE_INFINITY, _Math_cosh($MATH_NEGATIVE_INFINITY))
assertSame(1.5430806348152437, _Math_cosh(-1))
assertSame(1.0, _Math_cosh(-0))
assertSame(1.0, _Math_cosh(0))
assertSame(1.5430806348152437, _Math_cosh(1))
assertSame($MATH_POSITIVE_INFINITY, _Math_cosh($MATH_POSITIVE_INFINITY))
