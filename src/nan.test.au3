#include "../au3pm/au3unit/testCase.au3"
#include "isNan.au3"
#include "nan.au3"

assertTrue(_Math_isNan(_Math_nan()))
$x = _Math_nan()
assertFalse($x = $x)
