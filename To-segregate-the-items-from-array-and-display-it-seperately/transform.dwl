%dw 2.0
output application/json

// here i defines payload as a variable " v " that contains an object with a comments array. The comments array contains
// three strings: "Good", "Nice", and "Excellent".


var v = {
    "comments" :[
 "Good",
 "Nice",
 "Excellent"     ]
}
---
v.comments map (message: $)
// The $ symbol represents the current item in the array, which is the comment string. The map function returns an array of objects with a message property, like this:
// [
//   {
//     "message": "Good"
//   },
//   {
//     "message": "Nice"
//   },
//   {
//     "message": "Excellent"
//   }
// ]

 reduce ($ ++ $$)

 //Finally, the script uses the reduce function to concatenate all the messages in the array of objects into a singleobject. 

//  {
//   "message": "GoodNiceExcellent"
//  }