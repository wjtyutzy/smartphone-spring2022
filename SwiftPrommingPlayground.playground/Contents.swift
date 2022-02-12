import Cocoa

var greeting = "Hello, playground"
//var greeting1 : String = "Hello"
//let greeting2 = "Hello, playground"
greeting = "Hello, Ashish"
print(greeting)

//basic data types
let intValue: Int = 5
let intVal = 5
let doubleVal: Double = 5.0
let Str: String = "Hello I am a string"
let boolValue: Bool = true

//multiple variables at same time + optional
var x,y,z : Int?

var optionalInt : Int?

//fun stuff
let 😀 = "smile"
print(😀)

let apple = "🍎"
print(apple)
let name = "Ashish"
//print("Hello" + name)
print("Hello \(name)")

//comment in one line

/*
 multi line
 comment
 */

//print("Ashish")
//print("Ashish Again")
print("Ashish"); print("Ashish Again")

print("Int minimum value = \(Int.min)")
print("Int maximum value = \(Int.max)")
print("Int minimum value = \(UInt64.min)")


/*var doubleMaxiInt : Double = 9223372036854775807
doubleMaxiInt = doubleMaxiInt * 2
print(doubleMaxiInt)*/

let binaryVal = 0b0111
print(binaryVal)
let octalValue = 0o237
let hexaValue = 0xE
print(hexaValue)

//tuple value (key value)
let tupleValue = (404, "Not Found")
print(tupleValue.0)
print(tupleValue.1)

let (id, status) = (200, "Ok")
print(id)
print(status)

let tripleValue = (234, "abcd", true)
print(tripleValue.0)
print(tripleValue.1)
print(tripleValue.2)

//optionals
var strName : String?
//strName = "Optional Value is initialized"
//print(strName)

//strName = "Ashish"
//print(strName!)

//if //strName = "Ashish"  print [print(strName!)]will crash

//one way of handling optional
if strName != nil {
    print(strName!)
}

if strName != nil {
    print(strName)
}

//if let statement
if let name = strName {
    print(name)
}
/*
private static void sampleFunc(String str){
    
}*/

func sampleFunctionForGuard(strName : String?){
    //print the string
    
    guard let name = strName else { return }
    print(name)
}


