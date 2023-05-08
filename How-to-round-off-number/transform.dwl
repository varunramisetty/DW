%dw 2.0
output application/json
---
{
    roundHalfDown: 123.455 as String {format: "0.00", roundMode:"HALF_DOWN"},
//	roundHalfDown: Rounding mode to round towards "nearest neighbor" unless both neighbors are equidistant, in which case round down.

    roundCeiling: 123.455 as String {format: "0.00", roundMode:"CEILING"},
// roundCeiling: Rounding mode to round towards positive infinity

    roundEvenUp: 123.455 as String {format: "0.00", roundMode:"EvenUp"},
//Rounding mode to round towards the "nearest neighbor" unless both neighbors are equidistant, in which case, round towards the even neighbor.

    roundDown: 123.455 as String {format: "0.00", roundMode:"DOWN"},
// roundDown: Rounding mode to round towards zero.

    roundUp: 123.455 as String {format: "0.00",roundMode:"Up"},
// roundUp: Rounding mode to round away from zero.

    noRounding: 123.455 as String,
//
}