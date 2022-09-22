#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isInd.au3"
#include "tanh.au3"

assertSame(-1, _Math_tanh($MATH_NEGATIVE_INFINITY))
assertSame(-0.0, _Math_tanh(-0))
assertSame(0.0, _Math_tanh(0))
assertSame(0.7615941559557649, _Math_tanh(1))
assertSame(1, _Math_tanh($MATH_POSITIVE_INFINITY))
