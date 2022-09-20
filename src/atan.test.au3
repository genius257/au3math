#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "atan.au3"
#include "constants.au3"

assertSame(-1.5707963267948966, _Math_atan($MATH_NEGATIVE_INFINITY)); (-PI/2)
assertSame(Number(-0.0, $NUMBER_DOUBLE), _Math_atan(-0.0))
assertSame(Number(0, $NUMBER_DOUBLE), _Math_atan(0))
assertSame(0.7853981633974483, _Math_atan(1)); (PI/4)
assertSame(1.5707963267948966, _Math_atan($MATH_POSITIVE_INFINITY)); (PI/2)
