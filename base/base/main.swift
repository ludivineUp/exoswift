//
//  main.swift
//  base
//
//  Created by ludivine on 22/02/2021.
//

import Foundation
func inverse(x: Int,y: Int)->(x:Int, y: Int){
    return (y,x)
}
func decroissant(x:Int, y: Int, z: Int)->(a: Int, b : Int, c: Int){
    var (a,b,c) = (x, y, z) // ATTENTION les paramètres sont des let !!!
    if a < b{
        (a,b) = inverse(x:a,y:b)
    }
    if b < c{
        (b,c) = inverse(x:b,y:c)
    }
    if a < b{
        (a,b) = inverse(x:a,y:b)
    }
    return (a,b,c)
}
func boucle(min: Int, max : Int){
    for i in min...max{
        if i%2 == 0{
            print(i)
        }
    }
}
func fizzbuzz(){
    for i in 1...100{
        if i % 3 == 0{
            if i % 5 == 0 {
                print("fizzbuzz", terminator: " ")
            }else{
                print("buzz", terminator: " ")
            }
        }else if i % 5 == 0 {
            print("fizz", terminator: " ")
        }else{
            print(i, terminator: " ")
        }
        if i % 10 == 0{
            print()
        }
    }
}
func quatreiemeC(mot: String){
    if mot.count > 4{
        print(mot[mot.index(mot.startIndex, offsetBy: 4)])
    }else{
        print("-1")
    }
}
func motInverse(mot: String){
    print(String(mot.reversed()))
}
func palindrome(mot: String) -> Bool{
  return mot == String(mot.reversed())
}
func afficheTab(tab : [Int]){
    for i in tab{
        print(i)
    }
}
func afficheTabAvecIndice(tab : [Int]){
    for i in 0..<tab.count{
        print("\(i) : \(tab[i])")
    }
}
func minTab(tab : [Int]) -> Int{
    var min = tab[0]
    for i in tab{
        if i < min{
            min = i
        }
    }
    return min
}
func minIndice(tab : [Int]) -> Int{
    var min = 0
    for i in 0..<tab.count{
        if tab[i] < tab[min]{
            min = i
        }
    }
    return min
}
func sommeTab(tab : [Int]) -> Int{
    var s = 0
    for i in tab{
        s += i
    }
    return s
}
func moyenneTab(tab : [Int]) -> Double{
    var s = 0
    for i in tab{
        s += i
    }
    return Double(s/tab.count)
}
func containTab(tab: [Int], ele : Int)->Bool{
    return tab.contains(ele)
}
func tabIndice(tab : [Int], ele : Int)->Int{
    if tab.contains(ele){
        return tab.firstIndex(of: ele)!
    }
    return -1
}
func nbOccu(tab: [Int], ele: Int)-> Int{
    var res = 0
    for i in tab{
        if i == ele{
            res += 1
        }
    }
    return res
}
func inverseTab(tab: [Int]) -> [Int]{
    var res : [Int] = []
    for i in tab.reversed(){
        res.append(i)
    }
    return res
}
func pairTab(tab: [Int]) -> [Int]{
    var res : [Int] = []
    for (i,e) in tab.enumerated(){
        if i % 2 == 0{
            res.append(e)
        }
    }
    return res
}
// Exo 1
print("*** *** *** EXO 1 *** *** ***")
var (a,b,c) = (1,2,3)
print("\(a) - \(b) - \(c)")
(a,b,c) = decroissant(x: a, y: b, z: c)
print("\(a) - \(b) - \(c)") // 3 - 2 - 1
// Exo 2
print("*** *** *** EXO 2 *** *** ***")
var (borneMin, borneMax) = (1, 10)
boucle(min: borneMin, max: borneMax)
// Exo 3
print("*** *** *** EXO 3 *** *** ***")
fizzbuzz()
// Exo 4
print("*** *** *** EXO 4 *** *** ***")
quatreiemeC(mot: "total")
// Exo 5
print("*** *** *** EXO 5 *** *** ***")
motInverse(mot: "total")
// Exo 6
print("*** *** *** EXO 6 *** *** ***")
print(palindrome(mot: "toto"))
print(palindrome(mot: "sos"))
// Exo 7
print("*** *** *** EXO 7 *** *** ***")
var tab = [1,9,0,3,2,4,6,7,5,8]
afficheTab(tab: tab)
// Exo 8
print("*** *** *** EXO 8 *** *** ***")
afficheTabAvecIndice(tab: tab)
// Exo 9
print("*** *** *** EXO 9 *** *** ***")
print(minTab(tab: tab))
// Exo 10
print("*** *** *** EXO 10 *** *** ***")
print(minIndice(tab: tab))
// Exo 11
print("*** *** *** EXO 11 *** *** ***")
print(sommeTab(tab: tab))
// Exo 12
print("*** *** *** EXO 12 *** *** ***")
print(moyenneTab(tab: tab))
// Exo 13
print("*** *** *** EXO 13 *** *** ***")
print(containTab(tab: tab, ele: 0))
print(containTab(tab: tab, ele: 90))
// Exo 14
print("*** *** *** EXO 14 *** *** ***")
print(tabIndice(tab: tab, ele: 0))
print(tabIndice(tab: tab, ele: 90))
// Exo 15
print("*** *** *** EXO 15 *** *** ***")
print(nbOccu(tab: tab, ele: 0))
// Exo 16
print("*** *** *** EXO 16 *** *** ***")
print(inverseTab(tab: tab))
// Exo 17
print("*** *** *** EXO 17 *** *** ***")
print(pairTab(tab: tab))
