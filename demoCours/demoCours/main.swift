//
//  main.swift
//  demoCours
//
//  Created by ludivine on 22/02/2021.
//

import Foundation

var s = "42"    // s est une string
let pi = Double(s)  // pi est un Optional
let http404Error = (404, "Not Found")
let i : Int?    // nullable, utiliser dans les frameworks de swift
i = nil
let pointExclamation : Int! = i // optionel on ne sait pas si i est initalisé donc pointExclamation peut être null
// si String faild build => String? faild build => String!
print(pointExclamation)
var b = true
print("le booléen b vaut \(b)")
let(x,y)=(1,2)
for index in 1...5 {    // les bornes sont incluses
    print("\(index) times 5 is \(index * 5)")
}
let names = ["Anna", "Alex", "Brian", "Jack"]
print(names.count)
for i in 0..<names.count { // ..< borne supérieure non incluse
    print("Person \(i + 1) is called \(names[i])")
}
for name in names[2...] {   // slicing : de l'index 2 à la fin 2..<names.count
    print(name)
}
for name in names[...2] {// slicing : du 0 à l'indice 2
    print(name)
}
for name in names[..<2] {// slicing : du 0 à l'indice 2 exclus
    print(name)
}
for name in names[1...2] {// slicing : du 1 à l'indice 2
    print(name)
}
let range : PartialRangeThrough<Int> = ...5
print(range)
print(range.contains(7))
print(names.contains("Anna"))
b = true && false
b = true || false
b = !true
let quotation = """
The White Rabbit put on his spectacles. "Where shall I begin,
please your Majesty?" he asked.
"""
print(quotation)
for c in quotation{ //for of de js
    print(c)
}
var greeting = "Hello"
print(greeting.startIndex) // première lettre
print(greeting.index(before: greeting.endIndex))
let index = greeting.index(greeting.startIndex, offsetBy: 3)
print(greeting[index])
for i in greeting.indices{  // for in de js
    print(greeting[i])
}
greeting.insert(contentsOf: " !", at: greeting.endIndex)
print(greeting)

func greet(person:String)->String{
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person:"théo"))
func minMax(array:[Int])->(min:Int,max:Int){
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")

var tab = [Int]()
tab.append(1)
tab.append(100)
tab.append(45)
print(tab)
var repeatTab = Array(repeating: 1, count: 5);
print(repeatTab)
tab += repeatTab
print (tab[3])
tab.remove(at: 3)
tab.insert(99, at:3)
for(index, value) in tab.enumerated(){
    print("\(value) est à l'indice \(index)")
}
