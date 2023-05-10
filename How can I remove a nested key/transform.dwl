%dw 2.0
output application/json
---
payload map (
    $  update {
        case .coverage -> ($ ++ $.test) -"test"
    }
 )

//The mapping function takes the $ value indexs, which represents the current object being transformed, and applies an update to it. 
//The update is specified using a JSON patch-like syntax. In this case, the update is applied to the coverage property of the payload object.
//The update removes the "test" string from the end of the value of the test property using the - operator.