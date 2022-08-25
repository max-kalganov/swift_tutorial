import UIKit


// Variables --------------------
// regular variables

var greeting = "Hello, playground"
greeting = "Reassigned greeting"
print(greeting)

// constant variable
let some_constant_is = "constant value"
print(some_constant_is)

// Data types -------------------
// String
var string_var: String = "String"

// int
var int_var: Int = 0

//float
var float_var: Float = 0.0

// double
var double_var: Double = 0.00000000000000001

// bool
var bool_var: Bool = true


// If statement -----------------
// &&, ||, !=, ==, <=, >=

let int_constant: Int = 2
if int_constant < 3 && int_constant > 1{
    print("int constant is in (1, 3)")
}
else if int_constant < 10 {
    print("int constant is less than 10")
}
else if int_constant == 10{
    print("int constant is equal to 10")
}
else{
    print("int constant is bigger than 10")
}

// switch

let value = "d"

switch value{
case "a":
    print("value is a")
case "b", "c":
    print("value is b or c")
default:
    print("default case in switch")
}




