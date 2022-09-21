#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "log10.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_log10(-2)))
assertSame($MATH_NEGATIVE_INFINITY, _Math_log10(-0))
assertSame($MATH_NEGATIVE_INFINITY, _Math_log10(0))
assertSame(0.0, _Math_log10(1))
assertSame(0.3010299956639812, _Math_log10(2))
assertSame(5.0, _Math_log10(100000))
assertSame($MATH_POSITIVE_INFINITY, _Math_log10($MATH_POSITIVE_INFINITY))
