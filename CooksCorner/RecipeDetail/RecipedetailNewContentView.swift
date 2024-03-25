//
//  ContentView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 25.03.2024.
//

import UIKit

class RecipedetailNewContentView: UIView {
    
    var viewModel: RecipeDetailNEWViewModelProtocol!
    
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.separatorStyle = .none
        tableView.register(TopCell.self, forCellReuseIdentifier: TopCell.reuseIdentifier)
        tableView.register(BottomCell.self, forCellReuseIdentifier: BottomCell.reuseIdentifier)
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.isScrollEnabled = true
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstraints()
        
    }
    
    private func setupConstraints() {
        addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

