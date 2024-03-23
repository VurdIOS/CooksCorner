//
//  RecipeDetail.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import Foundation

import UIKit
#warning("убрать uikit и запрашивать картинку через стринг")

struct NewRecipe {
    var image: UIImage?
    var name: String
    var description: String
    var ingredient: [Ingredient]?
    var difficulty: String
    var category: String
    var preparationTime: String
}
