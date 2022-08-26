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


// Inheritance
class Manager: Employee{
    var team_size: Int = 0
    override func get_next_year_age() -> Int{
        let next_year_age: Int = super.get_next_year_age()
        print("Managers next year is \(next_year_age)")
        return next_year_age
    }
}

var my_manager: Manager = Manager()
my_manager.age = 30
my_manager.name = "Tom"
my_manager.role = "Manager"

print(my_manager.name, my_manager.role, my_manager.age, my_manager.get_next_year_age())


// Initializer ------------------------

class Person {
    var name: String = ""
    
    init(){
        self.name = "default name"
    }
    
    init(_ name: String){
        self.name = "empty arg label init"
    }
    
    init(person_name name: String){
        self.name = name
    }
}

var tom = Person(person_name: "Tom")
var neither_person = Person()
var empty_arg_person = Person("Mark")

print("tom name = \(tom.name)")
print("neither name = \(neither_person.name)")
print("empty_arg_person name = \(empty_arg_person.name)")


// Empty variables

var string_empty_var: String? = nil
var int_empty_var: Int? = nil
var double_empty_var: Double? // nil by default


print(string_empty_var)
string_empty_var = "non empty string"
print(string_empty_var)



class XmasPresent{
    func surprise() -> Int{
        return Int.random(in: 1...5)
    }
}

let present: XmasPresent? = XmasPresent()

if present == nil{
    print("no present")
}
else{
    // '!' is unwrappig object. When using it there is no type safe check. It's assumed that you now what is inside
    print("present: \(present!.surprise())")
}

if let actual_present = present {
    // if present is not nil this code will run
    print(actual_present.surprise())
}


// if present is not nil surprise will be executed
present?.surprise()

// Calculated properties

class LargeXmasPresent{
    var person_age: Int = 1
    var present_size: Int {
        return person_age * (-1) + 5
    }
    func surprise() -> Int{
        return Int.random(in: self.present_size...self.present_size+5)
    }
}

var large_present: LargeXmasPresent = LargeXmasPresent()
print(large_present.person_age, large_present.present_size, large_present.surprise())

large_present.person_age = 3
print(large_present.person_age, large_present.present_size, large_present.surprise())


class Dog{
    var name: String
    var height: Int?
    
    init(){
        name = "Bob"
    }
    
    convenience init(_ name: String, _ height: Int){
        self.init()
        
        self.name = name
        self.height = height
    }
}

var dog1 = Dog()
var dog2 = Dog("Rob", 20)


// Arrays ----------------------

var animals:[String] = ["Dog", "Cat", "Bird"]


for single_animal in animals {
    print("My " + single_animal)
}

for animal_id in 0...animals.count - 1 {
    animals[animal_id] = "My " + animals[animal_id]
}
print(animals)

animals.append("Jiraffe")
animals += ["Frog", "Bear"]
animals.insert("Lion", at: 1)

print(animals)

animals.remove(at: 0)

print(animals.firstIndex(of: "Lion")!)

print(animals)



