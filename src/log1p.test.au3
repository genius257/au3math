#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "log1p.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_log1p(-2)))
assertSame($MATH_NEGATIVE_INFINITY, _Math_log1p(-1))
assertSame(-0.0, _Math_log1p(-0.0))
assertSame(0.0, _Math_log1p(0))
assertSame(0.6931471805599453, _Math_log1p(1))
assertSame($MATH_POSITIVE_INFINITY, _Math_log1p($MATH_POSITIVE_INFINITY))
