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
    
    static func getMokeData() -> [Recipe] {
        let fakeData: [Recipe] = [Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 30, saveAmount: 12), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 30, saveAmount: 12), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 30, saveAmount: 12), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 30, saveAmount: 12), Recipe(image: UIImage(named: "Recipe1")!, title: "Pureshka", author: "Paul Swith", likeAmount: 30, saveAmount: 12)]
        return fakeData
    }
}
