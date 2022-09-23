#include "../au3pm/au3unit/testCase.au3"
#include "bitLogicalShift.au3"

assertSame(2, _Math_bitLogicalShift(9, 2))
assertSame(1073741821, _Math_bitLogicalShift(-9, 2))
assertSame(4294967294, _Math_bitLogicalShift(-2, 0))
assertSame(1, _Math_bitLogicalShift(-2, -1))
