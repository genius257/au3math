#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isInd.au3"
#include "tan.au3"

assertTrue(_Math_isInd(_Math_tan($MATH_NEGATIVE_INFINITY)))
assertSame(-0.0, _Math_tan(-0))
assertSame(0.0, _Math_tan(0))
assertSame(1.5574077246549023, _Math_tan(1))
assertSame(0.9999999999999999, _Math_tan($MATH_PI / 4)); (Floating point error)
assertTrue(_Math_isInd(_Math_tan($MATH_POSITIVE_INFINITY)))
