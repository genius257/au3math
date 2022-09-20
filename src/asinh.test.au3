#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "asinh.au3"
#include "constants.au3"

assertSame($MATH_NEGATIVE_INFINITY, _Math_asinh($MATH_NEGATIVE_INFINITY))
assertSame(-0.8813735870195429367157657907227985560894012451171875, _Math_asinh(-1))
assertSame(-0.0, _Math_asinh(-0.0))
assertSame(0, _Math_asinh(0))
assertSame(0.8813735870195429367157657907227985560894012451171875, _Math_asinh(1))
assertSame($MATH_POSITIVE_INFINITY, _Math_asinh($MATH_POSITIVE_INFINITY))
