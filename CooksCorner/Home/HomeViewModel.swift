//
//  HomeViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 13.03.2024.
//

import Foundation
protocol HomeViewModelProtocol {
    func getRecipeCount() -> Int
    func getRecipe(index: Int) -> Recipe

    func getDataforNEWRecipeDetailViewController(recipe: Recipe) -> RecipeDetailNEWViewModelProtocol
}

class HomeViewModel: HomeViewModelProtocol {
   
    
    private var mokeRecipes: [Recipe] = Recipe.getMokeData()
      
      func getRecipeCount() -> Int {
          mokeRecipes.count
      }
      
      func getRecipe(index: Int) -> Recipe {
          mokeRecipes[index]
      }
    
    func getDataforNEWRecipeDetailViewController(recipe: Recipe) -> RecipeDetailNEWViewModelProtocol {
        RecipeDetailNEWViewModel(recipe: recipe)
    }
    
}
