#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "acosh.au3"
#include "constants.au3"
#include "isNan.au3"

assertTrue(_Math_isNan(_Math_acosh(0)))
assertSame(Number(0, $NUMBER_DOUBLE), _Math_acosh(1))
assertSame(1.3169578969248166, _Math_acosh(2))
assertSame($MATH_POSITIVE_INFINITY, _Math_acosh($MATH_POSITIVE_INFINITY))
