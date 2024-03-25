//
//  TopCellViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 25.03.2024.
//

import Foundation

protocol BottomCellViewModelProtocol {
    var recipeName: String { get }
    var recipeDuration: String { get }
    var recipeLevel: String { get }
    var author: String { get }
    var recipeLikesAmount: Int { get }
    var recipeDescription: String { get }
    var recipeIngridients: [Ingredient] { get }
    
}

class BottomCellViewModel: BottomCellViewModelProtocol {
    var recipeName: String {
        viewModel.title
    }
    
    var recipeDuration: String {
        viewModel.recipeDuration
    }
    
    var recipeLevel: String {
        viewModel.level
    }
    
    var author: String {
        viewModel.author
    }
    
    var recipeLikesAmount: Int {
        viewModel.likeAmount
    }
    
    var recipeDescription: String {
        viewModel.description
    }
    
    var recipeIngridients: [Ingredient] {
        viewModel.ingridients
    }
    
    
    var viewModel: Recipe
    
    init(viewModel: Recipe) {
        self.viewModel = viewModel
    }
}

