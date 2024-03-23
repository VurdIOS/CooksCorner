//
//  SearchViewController.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import UIKit

class SearchViewController: UIViewController {
    
    let contentView = SearchContentView()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = contentView
    }
    


}
