%dw 2.0
output application/json

fun filterValueByConditions(value, conditions) = (
    if (isEmpty(conditions[0])) value
    else do {
        var firstConditionArr = conditions[0] splitBy ":"
        ---
        filterValueByConditions(
            value filter ($[firstConditionArr[0]] ~= firstConditionArr[1]),
            conditions[1 to -1]
        )
    }
)
---
payload filterValueByConditions [
    "Requried:true",
    "name:dev"
]
// The filterValueByConditions function is a recursive function that takes two arguments: value, which represents the value to be filtered, and conditions, which is a list of conditions to filter the value by. The function returns the filtered value.

// The function first checks if the first condition in the conditions list is empty. If it is empty, the function returns the original value.
// If the first condition is not empty, the function splits it into two parts: the key and the value. The key is the name of the field to filter by, and the value is the value to filter by.
// The function then filters the value based on the first condition using the filter function and the ~= operator. The ~= operator checks if the left-hand side matches the right-hand side using a regular expression.
// The function then calls itself recursively with the filtered value and the remaining conditions in the conditions list.

// The function continues to call itself recursively until all the conditions in the conditions list have been applied.Finally, the function returns the filtered value.

// In the provided example, the filterValueByConditions function is called with a payload and a list of two conditions.
// The first condition is "Required:true", which filters the payload to only include objects where the Required field is true. The second condition is "name:dev", which filters the payload to only include objects where the name field is dev.