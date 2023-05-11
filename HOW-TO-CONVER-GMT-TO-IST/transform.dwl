// To convert the current date and time to the Indian Standard Timezone or your covenant Time Zone.
%dw 2.0
output application/json 
// Here i declared a variable myDate and assigns it the current date and time in the Indian Standard Timezone(Asia/Kolkata).
var myDate = now() >> "Asia/Kolkata"
// The now() function returns the current date and time in the default timezone, and the >> operator converts it to the Indian Standard Timezone{Asia/Kolkata}
---
myDate as DateTime {format : "yyyy-MM-dd'T'hh:mm:ss'Z'" } 

// The format string "yyyy-MM-dd'T'hh:mm:ss'Z'" specifies the year,month, day, hour, minute, and second in the ISO, with the T and Z characters indicating that the string represents a UTC time.