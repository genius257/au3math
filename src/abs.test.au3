#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "abs.au3"
#include "constants.au3"

AssertSame($MATH_POSITIVE_INFINITY, _Math_abs($MATH_NEGATIVE_INFINITY))
AssertSame(Number(1, $NUMBER_DOUBLE), _Math_abs(-1))
AssertSame(Number(0, $NUMBER_DOUBLE), _Math_abs(-0))
AssertSame(Number(0, $NUMBER_DOUBLE), _Math_abs(0))
AssertSame(Number(1, $NUMBER_DOUBLE), _Math_abs(1))
AssertSame($MATH_POSITIVE_INFINITY, _Math_abs($MATH_POSITIVE_INFINITY))
AssertSame(Number(0, $NUMBER_DOUBLE), _Math_abs(Null))
AssertSame(Number(0, $NUMBER_DOUBLE), _Math_abs(""))
AssertSame(Number(0, $NUMBER_DOUBLE), _Math_abs("string"))
AssertSame(Number(2, $NUMBER_DOUBLE), _Math_abs(-2))
