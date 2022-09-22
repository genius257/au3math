#include "../au3pm/au3unit/testCase.au3"
#include "isMinusZero.au3"

assertFalse(_Math_isMinusZero(0))
assertFalse(_Math_isMinusZero(-0))
assertFalse(_Math_isMinusZero(0.0))
assertTrue(_Math_isMinusZero(-0.0))
