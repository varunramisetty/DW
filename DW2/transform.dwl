%dw 2.0
// The DataWeave code imports the Dates module from the dw::core module using the import * statement. This allows the code to use all the functions defined in the Dates module.
import * from dw::core::Dates
output application/json
---
// The code defines an object with two properties: atBeginningOfDayDateTime and atBeginningOfDayLocalDateTime. The atBeginningOfDayDateTime property uses the atBeginningOfDay function to return the beginning of the day for a given date-time value. The date-time value is specified using the ISO 8601 format with a time zone offset of -03:00. The atBeginningOfDayLocalDateTime property uses the atBeginningOfDay function to return the beginning of the day for a given local date-time value. The local date-time value is specified using the ISO 8601 format without a time zone offset.
{
  "atBeginningOfDayDateTime": atBeginningOfDay(|2023-10-06T18:23:20.351-03:00|),
  "atBeginningOfDayLocalDateTime": atBeginningOfDay(|2023-10-06T18:23:20.351|)
}
// The atBeginningOfDay function is a built-in function in the Dates module. It takes a date-time value as input and returns a new date-time value representing the beginning of the day for the input date-time value. The function sets the time component of the date-time value to 00:00:00.000 and returns the result.

// Finally, the code outputs the object in JSON format.