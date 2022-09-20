#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "asin.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_asin(-2)))
assertSame(-1.5707963267948966, _Math_asin(-1)); (-PI/2)
assertSame(Number(-0, $NUMBER_DOUBLE), _Math_asin(-0))
assertSame(Number(0, $NUMBER_DOUBLE), _Math_asin(0))
assertSame(0.5235987755982989, _Math_asin(0.5)); (PI/6)
assertSame(1.5707963267948966, _Math_asin(1)); (PI/2)
assertTrue(_Math_isInd(_Math_asin(2)))
