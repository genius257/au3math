#include "../au3pm/au3unit/testCase.au3"
#include "exp.au3"
#include "constants.au3"

assertSame(0.0, _Math_exp($MATH_NEGATIVE_INFINITY))
assertSame(0.36787944117144233, _Math_exp(-1))
assertSame(1.0, _Math_exp(0))
assertSame(2.718281828459045, _Math_exp(1))
assertSame($MATH_POSITIVE_INFINITY, _Math_exp($MATH_POSITIVE_INFINITY))
