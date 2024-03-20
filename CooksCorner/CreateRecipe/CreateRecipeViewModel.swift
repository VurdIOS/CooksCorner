//
//  CreateRecipeViewModel.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 20.03.2024.
//

import Foundation
protocol CreateRecipeViewModelProtocol {
    var isPhotoAdded: Bool { get }
    func photoStateChange()
}

class CreateRecipeViewModel: CreateRecipeViewModelProtocol {
    var isPhotoAdded: Bool {
        photoState
    }
    
    private var photoState = false
    
    func photoStateChange() {
        photoState.toggle()
    }
}
