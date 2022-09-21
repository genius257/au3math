#include "../au3pm/au3unit/testCase.au3"
#include "expm1.au3"
#include "constants.au3"

assertSame(-1.0, _Math_expm1($MATH_NEGATIVE_INFINITY))
assertSame(-0.6321205588285577, _Math_expm1(-1))
assertSame(-0.0, _Math_expm1(-0.0))
assertSame(0, _Math_expm1(0))
assertSame(1.718281828459045, _Math_expm1(1))
assertSame($MATH_POSITIVE_INFINITY, _Math_expm1($MATH_POSITIVE_INFINITY))
