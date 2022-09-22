#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isFinite.au3"

assertFalse(_Math_isFinite($MATH_POSITIVE_INFINITY))
assertFalse(_Math_isFinite($MATH_NAN))
assertFalse(_Math_isFinite($MATH_NEGATIVE_INFINITY))
assertTrue(_Math_isFinite(0))
assertTrue(_Math_isFinite(2e64))
