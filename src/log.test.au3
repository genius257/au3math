#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "log.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_log(-1)))
assertSame($MATH_NEGATIVE_INFINITY, _Math_log(-0.0))
assertSame($MATH_NEGATIVE_INFINITY, _Math_log(0))
assertSame(0.0, _Math_log(1))
assertSame(2.302585092994046, _Math_log(10))
assertSame($MATH_POSITIVE_INFINITY, _Math_log($MATH_POSITIVE_INFINITY))
