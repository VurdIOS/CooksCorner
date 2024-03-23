//
//  MealSize.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import Foundation
import SwiftyMenu

struct MealSize {
    let id: Int
    let name: String
}

extension MealSize: SwiftyMenuDisplayable {
    public var displayableValue: String {
        return self.name
    }

    public var retrievableValue: Any {
        return self.id
    }
}
