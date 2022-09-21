#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "atan2.au3"
#include "constants.au3"
#include "isMinusZero.au3"

assertSame(0.7853981633974483, _Math_atan2($MATH_POSITIVE_INFINITY, $MATH_POSITIVE_INFINITY)); (PI/4)
assertSame(-0.7853981633974483, _Math_atan2($MATH_NEGATIVE_INFINITY, $MATH_POSITIVE_INFINITY)); (-PI/4)
assertSame(2.356194490192345, _Math_atan2($MATH_POSITIVE_INFINITY, $MATH_NEGATIVE_INFINITY)); (3PI / 4)
assertSame(-2.356194490192345, _Math_atan2($MATH_NEGATIVE_INFINITY, $MATH_NEGATIVE_INFINITY)); (-3PI / 4)
assertSame(0.0, _Math_atan2(0.0, 0.0))
assertTrue(_Math_isMinusZero(_Math_atan2(-0.0, 0.0)))
assertSame($MATH_PI, _Math_atan2(0.0, -0.0))
assertSame($MATH_PI, _Math_atan2(0.0, -1))
assertSame(-$MATH_PI, _Math_atan2(-0.0, -0.0))
assertSame(-$MATH_PI, _Math_atan2(-0.0, -1))
assertSame($MATH_PI, _Math_atan2(1, $MATH_NEGATIVE_INFINITY))
assertSame(1.5707963267948966 , _Math_atan2(1, -0.0))
assertSame(-$MATH_PI , _Math_atan2(-1, $MATH_NEGATIVE_INFINITY))
assertSame(-1.5707963267948966, _Math_atan2(-1, -0.0))
assertSame(1.4056476493802699, _Math_atan2(90, 15))
assertSame(0.16514867741462683, _Math_atan2(15, 90))
