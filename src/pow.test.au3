#include <AutoItConstants.au3>
#include "../au3pm/au3unit/testCase.au3"
#include "constants.au3"
#include "isInd.au3"
#include "pow.au3"

assertSame(Int(49, $NUMBER_64BIT), _Math_pow(7, 2))
assertSame(Int(343, $NUMBER_64BIT), _Math_pow(7, 3))
assertSame(Int(1024, $NUMBER_64BIT), _Math_pow(2, 10))

assertSame(2.0, _Math_pow(4, 0.5)); (square root of 4)
assertSame(2.0, _Math_pow(8, 1 / 3)); (cube root of 8)
assertSame(1.4142135623730951, _Math_pow(2, 0.5)); (square root of 2)
assertSame(1.2599210498948732, _Math_pow(2, 1 / 3)); (cube root of 2)

assertSame(0.02040816326530612, _Math_pow(7, -2)); (1/49)
assertSame(0.5, _Math_pow(8, -1 / 3))

assertSame(Int(49, $NUMBER_64BIT), _Math_pow(-7, 2)); (squares are positive)
assertSame(Int(-343, $NUMBER_64BIT), _Math_pow(-7, 3)); (cubes can be negative)
assertTrue(_Math_isInd(_Math_pow(-7, 0.5))); (negative numbers don't have a real square root)
assertTrue(_Math_isInd(_Math_pow(-7, 1 / 3)))

assertSame(1.0, _Math_pow(0, 0)); (anything ** +0 is 1)
assertSame($MATH_POSITIVE_INFINITY, _Math_pow($MATH_POSITIVE_INFINITY, 0.1)); (positive exponent)
assertSame(0.0, _Math_pow($MATH_POSITIVE_INFINITY, -1)); (negative exponent)
assertSame($MATH_NEGATIVE_INFINITY, _Math_pow($MATH_NEGATIVE_INFINITY, 1)); (positive odd integer exponent)
assertSame($MATH_POSITIVE_INFINITY, _Math_pow($MATH_NEGATIVE_INFINITY, 1.5)); (positive exponent)
assertSame(-0.0, _Math_pow($MATH_NEGATIVE_INFINITY, -1)); (negative odd integer exponent)
assertSame(0.0, _Math_pow($MATH_NEGATIVE_INFINITY, -1.5)); (negative exponent)
assertSame(0.0, _Math_pow(0, 1)); (positive exponent)
assertSame($MATH_POSITIVE_INFINITY, _Math_pow(0, -1)); (negative exponent)
assertSame(-0.0, _Math_pow(-0.0, 1)); (positive odd integer exponent)
assertSame(0.0, _Math_pow(-0.0, 1.5)); (positive exponent)
assertSame($MATH_NEGATIVE_INFINITY, _Math_pow(-0.0, -1)); (negative odd integer exponent)
assertSame($MATH_POSITIVE_INFINITY, _Math_pow(-0.0, -1.5)); (negative exponent)
assertSame(0.0, _Math_pow(0.9, $MATH_POSITIVE_INFINITY))
assertTrue(_Math_isInd(_Math_pow(1, $MATH_POSITIVE_INFINITY)))
assertSame($MATH_POSITIVE_INFINITY, _Math_pow(1.1, $MATH_POSITIVE_INFINITY))
assertSame($MATH_POSITIVE_INFINITY, _Math_pow(0.9, $MATH_NEGATIVE_INFINITY))
assertTrue(_Math_isInd(_Math_pow(1, $MATH_NEGATIVE_INFINITY)))
assertSame(0.0, _Math_pow(1.1, $MATH_NEGATIVE_INFINITY))
