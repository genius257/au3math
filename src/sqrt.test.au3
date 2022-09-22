#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isInd.au3"
#include "sqrt.au3"

assertTrue(_Math_isInd(_Math_sqrt(-1)))
assertSame(-0.0, _Math_sqrt(-0))
assertSame(0.0, _Math_sqrt(0))
assertSame(1.0, _Math_sqrt(1))
assertSame(1.4142135623730951, _Math_sqrt(2))
assertSame(3.0, _Math_sqrt(9))
assertSame($MATH_POSITIVE_INFINITY, _Math_sqrt($MATH_POSITIVE_INFINITY))
