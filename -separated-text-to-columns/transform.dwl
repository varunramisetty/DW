%dw 2.0
//The script starts with the separator is set to " | " The header option is set to false, which means that the input does not have a header row.

input payload application/csv separator='|', header=false
output application/json
---
payload