//
//  CreateRecipeViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 20.03.2024.
//

import Foundation
protocol CreateRecipeViewModelProtocol {
    func create(recipe: NewRecipe)

}

class CreateRecipeViewModel: CreateRecipeViewModelProtocol {
    func create(recipe: NewRecipe) {
        print(recipe)
    }

    
}
