%dw 2.0
output application/json
---
//The script starts by using the map function to iterate over each element of the payload array
[payload map ((item, index) ->  
//The lambda function then uses the ++ operator to concatenate the string "test '" with the current element item,and then concatenates the resulting string with the string "'" to create a string that surrounds the current elementwith single quotes.
"test '" ++ item ++ "'")
//The joinBy function takes two arguments: the first argument is the string that should be used to join the elementstogether, and the second argument is the array of elements to be joined. In this case, the first argument is the string" or ", and the second argument is the array of transformed elements returned by the map function.
joinBy  " or "]
