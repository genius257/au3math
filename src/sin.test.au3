#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isInd.au3"
#include "sin.au3"

assertTrue(_Math_isInd(_Math_sin($MATH_NEGATIVE_INFINITY)))
assertSame(-0.0, _Math_sin(-0))
assertSame(0.0, _Math_sin(0))
assertSame(0.8414709848078965, _Math_sin(1))
assertSame(1.0, _Math_sin($MATH_PI / 2))
assertTrue(_Math_isInd(_Math_sin($MATH_POSITIVE_INFINITY)))
