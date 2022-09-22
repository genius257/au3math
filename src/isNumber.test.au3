#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isNumber.au3"

assertTrue(_Math_isNumber(0))
assertTrue(_Math_isNumber(0.0))
assertTrue(_Math_isNumber($MATH_POSITIVE_INFINITY))
assertTrue(_Math_isNumber($MATH_NEGATIVE_INFINITY))
assertTrue(_Math_isNumber($MATH_IND))
assertTrue(_Math_isNumber($MATH_NAN))
assertTrue(_Math_isNumber($MATH_DEN))
assertFalse(_Math_isNumber("0"))
assertFalse(_Math_isNumber(Null))
