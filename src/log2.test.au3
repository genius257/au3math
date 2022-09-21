#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "log2.au3"
#include "isInd.au3"

assertTrue(_Math_isInd(_Math_log2(-2)))
assertSame($MATH_NEGATIVE_INFINITY, _Math_log2(-0))
assertSame($MATH_NEGATIVE_INFINITY, _Math_log2(0))
assertSame(0.0, _Math_log2(1))
assertSame(1.0, _Math_log2(2))
assertSame(1.5849625007211562977005314678535796701908111572265625, _Math_log2(3))
assertSame(10.0, _Math_log2(1024))
assertSame($MATH_POSITIVE_INFINITY, _Math_log2($MATH_POSITIVE_INFINITY))
