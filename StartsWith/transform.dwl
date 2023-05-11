%dw 2.0
output application/json
---
payload filter ((item, index) -> item.fname startsWith  ("s") )

// The script that takes a payload as input, filters the items whose fname property starts with the letter "s", and outputs the filtered items as JSON.