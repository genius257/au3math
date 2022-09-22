#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isInd.au3"

assertTrue(_Math_isInd($MATH_IND))
assertTrue(_Math_isInd(0 / 0))
assertFalse(_Math_isInd(2.0))
