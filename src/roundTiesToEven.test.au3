#include "../au3pm/au3unit/testCase.au3"
#include "roundTiesToEven.au3"

assertSame(0.0, _Math_roundTiesToEven(0.5))
assertSame(2.0, _Math_roundTiesToEven(1.5))
assertSame(2.0, _Math_roundTiesToEven(2.5))
