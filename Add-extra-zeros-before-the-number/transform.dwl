%dw 2.0
output application/json
import * from dw::core::Strings
---
leftPad(payload.id,17,0)


// if you want remove the leading zeros from the payload use the below code 

// PAYLOAD

// {
//     "id":"00000000004564053"
// }

//SCRIPT

// %dw 2.0
// output application/json
// ---
//payload mapObject (($$) : $ replace /^0+/ with "")

// The transformation function is defined as (($$) : $ replace /^0+/ with ""). This function takes a string as input and returns a new string with any leading zeros removed. The function uses the replace method, which is a built-in method of the string object, to replace any leading zeros with an empty string. The regular expression /^0+/ matches one or more leading zeros at the beginning of the string.

//For example, if the input object is { a: '001', b: '002', c: '003' }, the output object will be { a: '1', b: '2', c: '3' }