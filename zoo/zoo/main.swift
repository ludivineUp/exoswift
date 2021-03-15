//
//  main.swift
//  zoo
//
//  Created by ludivine on 22/02/2021.
//

import Foundation

enum GenreValue {
    case male
    case femelle
}

enum AnimalError: Error{
    case WrongGenre
}

class Animal{
    var name: String
    var age: Int
    var genre: GenreValue
    var kind: String
    var zoo : Zoo?
    init(){
        name="n/a"
        age=1
        genre = GenreValue.femelle
        kind = "indéterminé"
    }
    init(name: String, age: Int, genre: GenreValue, kind: String){
        self.name = name
        self.age = age
        self.genre = genre
        self.kind = kind
    }
    
    init(name: String, genre: GenreValue, kind: String){
        self.name = name
        self.age = 1
        self.genre = genre
        self.kind = kind
    }
    deinit {
        print("\(name) a mouru")
        self.zoo?.updateRecensencment(kind: kind)
    }
    func mourir(){
        print("\(name), c'est la fin")
        self.zoo?.removeAnimal(a: self)
    }
    
    func mettreBas()throws -> Animal?{
            if self.genre == GenreValue.male{
                throw AnimalError.WrongGenre
            }
            let gI = Int.random(in: 1...2)
            var bebe = Animal(name: self.name+" petit", genre: gI == 1 ? GenreValue.femelle : GenreValue.male, kind: self.kind)
            zoo?.addAnimal(a: bebe)
            return bebe
    }
}

class Zoo{
    var animaux : [Animal] = []
    var rescencement = [String:Int]()
    subscript(index: Int) -> Animal {
        return animaux[index]
    }
    
    func addAnimal(a: Animal?){
        animaux.append(a!);
        if rescencement.keys.contains(a!.kind){
            rescencement[a!.kind]! += 1;
        }else{
            rescencement[a!.kind] = 1;
        }
        a!.zoo = self
    }
    
    func removeAnimal(a: Animal?){
        print("on supprime du zoo \(a!.name)")
        var i = 0;
        for (pos,ani) in animaux.enumerated(){
            if ani.name == a!.name{
                i = pos
                break
            }
        }
        animaux.remove(at: i)
    }
    func updateRecensencment(kind: String){
        rescencement[kind]! -= 1;
        if rescencement[kind]! == 0{
            rescencement.removeValue(forKey: kind)
        }
    }
}


var minie : Animal?
minie = Animal(name: "minnie", age: 4, genre: GenreValue.femelle, kind: "souris")
var mickey : Animal?
mickey = Animal(name: "mickey", age: 7, genre: GenreValue.male, kind: "souris")
var monZoo = Zoo()
monZoo.addAnimal(a: minie)
monZoo.addAnimal(a: mickey)
do{
    try minie!.mettreBas()
    print("minie a mis bas")
}catch AnimalError.WrongGenre{
    print("un male ne peut pas mettre bas")
}
print(monZoo.rescencement)
mickey!.mourir()
mickey = nil
print(monZoo.rescencement)
print(monZoo[0])
