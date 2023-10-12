//
//  Superhero.swift
//  Superhero
//
//  Created by Sami Ahmed on 30/09/2023.
//

import SwiftUI

struct Superhero : Identifiable {
    var id = UUID()
    var title : String
    var image : String
    var message : String
    let gradientColors :[Color]
}

let superherosData : [Superhero] = [

Superhero(title: "Hulk",
          image: "hulk",
          message: "The Hulk is a superhero appearing in American comic books published by Marvel Comics",
          gradientColors:[Color("ColorHulk01"), Color("ColorHulk02")]),

Superhero(title: "Ironman",
          image: "ironman",
          message: "Ironman can fly",
          gradientColors: [Color("ColorIronman01"),Color("ColorIronman02")]),

Superhero(title: "Spiderman",
          image: "spiderman",
          message: "Spiderman is not a real spider",
          gradientColors: [Color("ColorSpiderman01"),Color("ColorSpiderman02")]),

Superhero(title: "Superman",
          image: "superman",
          message: "Superman is from another planet",
          gradientColors: [Color("ColorSuperman01"),Color("ColoerSuperman02")]),

Superhero(title: "Wolverine",
          image: "wolverine",
          message: "Wolverine has knives in his hand",
          gradientColors: [Color("ColorWolverine01"),Color("ColorWolverine02")])
]

