%dw 2.0
output application/json
---
{
         //removes two key-value pairs from the source object.
     "Demo": { 
               "1" : "Fear", 
          "2" : "Of" ,
          "3" : "the" ,
          "4" : "God" 
             } -- 
          ["2", "3","4"],

     //Removes specified key-value pairs from an object.
     "Demo":
     { 
          "name": "sun1",
          "hOffset": 250,
          "vOffset": 250,
          "alignment": "center" 
           } -- ["alignment" as Key],

          //removes specified items from an array.
     "Demo" : [23,13,32,79,23,63] -- [23,79] ,

     //removes a key-value pair from the source object.
     "Demo": { 
          "name" : "Fear", 
          "name" : "Of" ,
          "name" : "the" ,
          "name" : "God"
      } --
      { 
         "name" : "the"
      }
}