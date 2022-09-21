;#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isNan.au3"
#include "sign.au3"

assertSame(1, _Math_sign(3))
assertSame(-1, _Math_sign(-3))
assertSame(-1, _Math_sign("-3"))
assertSame(0, _Math_sign(0))
assertSame(-0.0, _Math_sign(-0.0))
assertTrue(_Math_isNan(_Math_sign($MATH_NAN)))
