#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "atanh.au3"
#include "constants.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_atanh(-2)))
assertSame($MATH_NEGATIVE_INFINITY, _Math_atanh(-1))
assertSame(-0.0, _Math_atanh(-0.0))
assertSame(0, _Math_atanh(0))
assertSame(0.54930614433405489105410879346891306340694427490234375, _Math_atanh(0.5))
assertSame($MATH_POSITIVE_INFINITY, _Math_atanh(1))
assertTrue(_Math_isInd(_Math_atanh(2)))
