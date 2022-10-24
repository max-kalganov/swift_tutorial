import UIKit

let a: Int = 4
var greeting = "Hello, playground"
print(greeting)

var s = Set([1, 2, 3])
print(s.union([1, 5, 6]))
print(s.subtracting(Set([2, 4, 5])))
print(s)

for _ in 0...5{
    print(s.randomElement()!)
}



let ac: CGFloat = 1
let bc: CGFloat = 4
let cc: CGFloat = -10
let dc: CGFloat = 4

print(Int(a > 5))


print(ac.truncatingRemainder(dividingBy: bc))
print(cc.truncatingRemainder(dividingBy: bc))
print(dc.truncatingRemainder(dividingBy: bc))


struct Point: Hashable{
    let x: CGFloat
    let y: CGFloat
}

let p1: Point = Point(x: 1, y: 1)
let p2 = Point(x: 2, y: 1)
let p3 = Point(x: 1, y: 1)

print(p1 == p2)
print(p1 == p3)
print(p2 == p3)

print(mod(-1, 5))
print(mod(-5, 5))
print(mod(-11, 5))
print(mod(1, 5))
print(mod(4, 5))
print(mod(5, 5))
print(mod(6, 5))
print(mod(10, 5))
print(mod(11, 5))

let num: Int = -1

Int.remainder(num)

num.truncatingRemainder(dividingBy: 4)



print(s.contains(1))

struct Pair: Hashable{
    let x: Int
    let y: Int
}


let p1 = Pair(x: 1, y: 1)
let p2 = Pair(x: 3, y: 2)

let p3 = Pair(x: 1, y: 1)

var s2 = Set([p1, p2])

print(s2.contains(p1))
print(s2.contains(p2))
print(s2.contains(p3))

