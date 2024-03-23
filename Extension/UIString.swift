//
//  String.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import Foundation
import SwiftyMenu

extension String: SwiftyMenuDisplayable {
    public var displayableValue: String {
        return self
    }

    public var retrievableValue: Any {
        return self
    }
}
