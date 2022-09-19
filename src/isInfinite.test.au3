#include "../au3pm/au3unit/testCase.au3"
#include "isInfinite.au3"
#include "constants.au3"

assertTrue(_Math_isInfinite(1/0))
assertTrue(_Math_isInfinite(-1/0))
assertFalse(_Math_isInfinite(False))
assertFalse(_Math_isInfinite($MATH_NAN))
assertFalse(_Math_isInfinite(Null))
assertFalse(_Math_isInfinite(0))
assertFalse(_Math_isInfinite('0'))
