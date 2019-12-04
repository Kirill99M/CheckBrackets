func checkBrackets(string: String) -> Int {
let length : Int = string.count
if length == 0 { return -1}
let characters = Array(string)
var stackOfBrackets : [bracket] = []
var brackets :[Character:Character] = ["]":"[",")":"(","}":"{"]
for i in 1...length{
var symbol = characters[i-1]
if brackets.values.contains(symbol) {stackOfBrackets.append(bracket(index : i , type : symbol))}
if brackets.keys.contains(symbol) {
if stackOfBrackets.isEmpty {return i}
if brackets[symbol] != stackOfBrackets.removeLast().type {return i}
}
}

if !stackOfBrackets.isEmpty {return stackOfBrackets.removeLast().index}
return -1
}

struct bracket {
var index : Int
var type : Character
}