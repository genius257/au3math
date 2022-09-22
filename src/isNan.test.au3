#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isNan.au3"

assertTrue(_Math_isNan($MATH_NAN))
assertFalse(_Math_isNan(0 / 0)); #IND
assertFalse(_Math_isNan(37))
assertFalse(_Math_isNan("NaN"))
assertFalse(_Math_isNan("blabla"))
assertFalse(_Math_isNan(true))
assertFalse(_Math_isNan(null))
assertFalse(_Math_isNan("37"))
assertFalse(_Math_isNan("37.37"))
assertFalse(_Math_isNan(""))
assertFalse(_Math_isNan(" "))
