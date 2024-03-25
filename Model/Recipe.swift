//
//  Recipe.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 13.03.2024.
//

import UIKit
#warning("убрать uikit и запрашивать картинку через стринг")

struct Recipe {
    var image: UIImage
    var title: String
    var author: String
    var likeAmount: Int
    var saveAmount: Int
    var recipeDuration: String
    var description: String
    var level: String
    var ingridients: [Ingredient]
    
    static func getMokeData() -> [Recipe] {
        let fakeData: [Recipe] = [Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 10, saveAmount: 12, recipeDuration: "10", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus commodo dui tempor arcu placerat, eget aliquam massa semper. Nunc in lobortis lorem. Suspendisse potenti. Orci.", level: "Easy", ingridients: Ingredient.getSomeIngridient()), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 15, saveAmount: 12, recipeDuration: "10", description: "asdasdasdadasdadadasd", level: "Hard", ingridients: Ingredient.getSomeIngridient()), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 20, saveAmount: 12, recipeDuration: "10", description: "asdasdasdadasdadadasd", level: "Medium", ingridients: Ingredient.getSomeIngridient()), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 30, saveAmount: 12, recipeDuration: "10", description: "asdasdasdadasdadadasd", level: "Easy", ingridients: Ingredient.getSomeIngridient()), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 30, saveAmount: 12, recipeDuration: "10", description: "asdasdasdadasdadadasd", level: "Hard", ingridients: Ingredient.getSomeIngridient())]
        return fakeData
    }
}
