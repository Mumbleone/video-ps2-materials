//: [⇐ Previous: 09 - filter, reduce, and sort](@previous)
//: ## Episode 10: Challenge - filter, reduce, and sort

/*:
 ## Challenge Time 😎
 
 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
*/

let names = ["Chase", "Cam", "Zeke", "Matt", "Wraith", "Steve"]
let people = names.reduce("") { som, name in
    som + " " + name
}
print(people)


/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
*/


let fourCharacterNames = names.filter { name in
    name.count > 4
}.reduce("") { som, name in
    som + " " + name
}
print(fourCharacterNames)


/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
*/


let namesAndAges: [String: Int] = ["Chase" : 17, "Cam" : 18, "Wraith" : 32, "Steve" : 22, "Zeke" : 25, "Matt" : 21]
let under18 = namesAndAges.filter { age in
    age.value < 18
}
print(under18)

/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
*/

let over18 = namesAndAges.filter { age in
    age.value >= 18
}.map { name in
    name.key
}
print(over18)
//: [⇒ Next: 11 - Conclusion](@next)
