//
//  main.swift
//  oop
//
//  Created by ludivine on 22/02/2021.
//

import Foundation

/*
 classes = méthodes
 que des attributs = structures
 */
enum Genre {
    case male
    case femelle
    case herma
}
var genre = Genre.male
var madame = Genre.femelle
var escargot = Genre.herma

struct Quote {
    var s:String
    var rank:Int?
    init(s:String, rank:Int?){
        self.s = s
        self.rank = rank
    }
    init(s:String){
        self.s = s
    }
}
class Tracteur{ // pas de constructeur, on mets des valeurs par défaut dans les attributs
    var marque:String = ""
    var puissance:Int = 0
    var toto:Bool?
}
class Dentiste{
    var niveauSado: Int
    var competent: Bool
    // read only
    var honaire: Int {return niveauSado * 100}
    init(){
        niveauSado = 10
        competent = false
    }
    
    init(niveauSado: Int, competent: Bool){
        self.niveauSado = niveauSado    // this => self
        self.competent = competent
    }
    
    func opere(){
        print("Ouuuupssssss")
    }
    // destructeur
    deinit{
        print("Un sado en moins")
    }
}
var q = Quote(s:"RTFM", rank: 5)
var q2 = Quote(s:"RTFM2")
print(q.s)
print(q2.s)
print(q2.rank)
var JP : Dentiste?
JP = Dentiste(niveauSado: 1, competent: true)
JP?.opere()
//JP.honaire = 100 build failed
print(JP!.honaire)
// pour détruire l'objet à la main, on le mets à nil
JP = nil

// Injection de dépendance : une classe A connaît une classe B et B connait A
