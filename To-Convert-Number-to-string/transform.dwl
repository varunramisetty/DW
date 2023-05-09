%dw 2.0
import dw::core::Strings
output application/json  
---
if (payload.message != "no data")
  payload map (a, b) -> {
    "rate": (a.rate * 100) as String {format: "#.####"},
    "API": (a.API * 100) as String {format: "#.####"}
  } else []

//   %dw 2.0
// import dw::core::Strings

//// The script first imports the Strings module from the dw::core module. This module provides functions for working with strings in DataWeave.

// output application/json  
// ---
// if (payload.message != "no data")

// // The script uses an if statement to check if the message property of the input payload is not equal to "no data". If the message property is not equal to "no data"

//   payload map (a, b) -> {

// //the script uses the map function to transform each element in the payload array. For each element, the script creates a new object with the rate and API properties formatted as strings with four decimal places. The rate and API properties are accessed using the a.rate and a.API syntax, respectively. 

//     "rate": (a.rate * 100) as String {format: "#.####"},
//     "API": (a.API * 100) as String {format: "#.####"}

////The as String {format: "#.####"} syntax is used to format the values as strings with four decimal places.

//   }
// else[]

// // If the message property of the input payload is equal to "no data", the script returns an empty array.