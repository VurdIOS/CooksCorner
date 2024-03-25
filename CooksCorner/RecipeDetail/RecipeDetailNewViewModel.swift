//
//  RecipeDetailNewViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 25.03.2024.
//

import Foundation

protocol RecipeDetailNEWViewModelProtocol {
    var recipe: Recipe { get }
    func getDataForBottomCell() -> BottomCellViewModelProtocol

}

class TourDetailsTopTableViewCellViewModel: RecipeDetailNEWViewModelProtocol {

    
    
    
    let recipe: Recipe
    
    func getDataForBottomCell() -> BottomCellViewModelProtocol {
        BottomCellViewModel(viewModel: recipe)
    }
    
    init(recipe: Recipe) {
        self.recipe = recipe
    }
}
