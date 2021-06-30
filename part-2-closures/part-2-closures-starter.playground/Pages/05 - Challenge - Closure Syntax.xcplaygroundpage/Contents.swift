//: [⇐ Previous: 04 - Closure Syntax](@previous)
//: ## Episode 05: Challenge - Closure Syntax

/*:
 ## Challenge 1
 Rewrite the long closure with the following syntax:
  * No parameter types
  * No parameter or return types
  * No parameter names
 Try passing the same values into each closure. Their printed results should match!
*/

// --------------------------------------
let copyLines = { (offense: String, repeatCount: Int) -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
// --------------------------------------

typealias Type = (String, Int) -> Void

let copyLinesShort: Type = { offense, repeatCount -> Void in
    print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
let copyLinesShortAgain: Type = { offense, repeatCount in
    print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
let copyLinesShortAgainAndAgain: Type = {
    print( String(repeating: "I must not \($0).", count: $1) )
}
copyLinesShort("Cool", 2)
copyLinesShortAgain("Sweet", 3)
copyLinesShortAgainAndAgain("Awesome", 4)
//: [⇒ Next: 06 - forEach and map](@next)
