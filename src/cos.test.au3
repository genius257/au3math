#include "../au3pm/au3unit/testCase.au3"
#include "cos.au3"
#include "constants.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_cos($MATH_NEGATIVE_INFINITY)))
assertSame(1.0, _Math_cos(-0))
assertSame(1.0, _Math_cos(0))
assertSame(0.5403023058681398, _Math_cos(1))
assertSame(-1.0, _Math_cos($MATH_PI))
assertSame(1.0, _Math_cos(2 * $MATH_PI))
assertTrue(_Math_isInd(_Math_cos($MATH_POSITIVE_INFINITY)))
