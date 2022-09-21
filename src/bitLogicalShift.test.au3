#include "../au3pm/au3unit/testCase.au3"
#include "bitLogicalShift.au3"

assertSame(2, _Math_bitLogicalShift(9, 2))
assertSame(1073741821, _Math_bitLogicalShift(-9, 2))
