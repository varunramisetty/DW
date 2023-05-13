%dw 2.0
output application/xml
import mapLeafValues from dw::util::Tree
// The script first imports the mapLeafValues function from the dw::util::Tree module.
// This function is used to traverse the XML tree and apply a transformation to each leaf node.

var maskedValue = "****" // Replace the value with this String
// The script then defines two variables: maskedValue and fieldsToMask.
// The maskedValue variable is a string that will be used to replace the values of the fields that need to be masked.

var fieldsToMask = ["ssn", "accountNo"] 
// The fieldsToMask variable is a list of field names that need to be masked.

fun maskFields(data) = (
    data mapLeafValues ((value, path) -> 
// The maskFields function is defined next.
// This function takes the input payload as an argument and applies a transformation to each leaf node in the payload.
        if (
            (fieldsToMask contains value.@name) 
            or (fieldsToMask contains path[-1].selector)) maskedValue 
        else value ))
// The mapLeafValues function is used to traverse the XML tree and apply the transformation.
// For each leaf node, the function checks if the name of the attribute or the name of the field matches any of the names in the fieldsToMask list.
// If there is a match, the maskedValue is returned. Otherwise, the original value is returned.   
---
maskFields(payload) 