//this is how  we can remove the objects which have "hasContractClaimOrQuote" = false?
%dw 2.0
output application/json
---
payload[?$.hasContractClaimOrQuote == true]

// by using [? ] This filters the payload object to return only the objects that have a property called hasContractClaimOrQuote with a value of true.

//The ? operator is used to filter the payload

// $. syntax is used to access the hasContractClaimOrQuote property of each object in the payload.

// The == operator is used to compare the value of the hasContractClaimOrQuote property to true.