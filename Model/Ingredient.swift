//
//  Ingredient.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import Foundation

struct Ingredient {
    var name: String
    var weightType: String
    var weight: Int?
    
    
    static func getSomeIngridient() -> [Ingredient] {
        return [Ingredient(name: "Cucumber", weightType: "kg", weight: 1), Ingredient(name: "Tomato", weightType: "kg", weight: 2), Ingredient(name: "Potato", weightType: "kg", weight: 23)]
    }
}
