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


// Loops ---------------------

for _ in 1...5 {
    print("hello")
}

var sum = 0
for counter in 1...5 {
    sum += counter
    print("sum = ", sum)
}


var counter: Int = 0
while counter <= 5 {
    counter += 1
}
print("While loop has stopped")

counter = 0
repeat{
    counter += 1
    print("Counter value = ", counter)
}while counter < 5
print("Repeat-While loop has stopped")


// Functions -----------------------

func print_hello(){
    print("hello")
}

print_hello()

func sum_values(val1: Int, val2: Int) -> Int{
    return val1 + val2
}

let a = 3
let b = 5
print(a, b, sum_values(val1: a, val2: b))

func sum_values_with_arg_labels(val1_to_be_summed val1: Int, val2_to_be_summed val2: Int) -> Int{
    return sum_values(val1: val1, val2: val2)
}

let a2 = 4
let b2 = 9
print(a2, b2, sum_values_with_arg_labels(val1_to_be_summed: a2, val2_to_be_summed: b2))


// Classes ------------------------

class Employee{
    var name: String = ""
    var role: String = ""
    var age: Int = 0
    
    func get_next_year_age() -> Int{
        return age + 1
    }
}

var me = Employee()
me.age = 24
me.name = "Max"
me.role = "IT"

print(me.name, me.role, me.age)
print("Next year age -  \(me.get_next_year_age())")

