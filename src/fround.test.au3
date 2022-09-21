#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "fround.au3"

assertSame(1.5, _Math_fround(1.5))
assertSame(1.3370000123977661, _Math_fround(1.337))
assertSame($MATH_POSITIVE_INFINITY, _Math_fround(_Math_pow(2, 150)))
