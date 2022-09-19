#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "acos.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_acos(-2)))
assertSame($MATH_PI, _Math_acos(-1)); (PI)
assertSame(1.5707963267948966, _Math_acos(0)); (PI/2)
assertSame(1.0471975511965979, _Math_acos(0.5)); (PI/3)
assertSame(Number(0, $NUMBER_DOUBLE), _Math_acos(1))
assertTrue(_Math_isInd(_Math_acos(2)))
