//
//  HomeContentView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 13.03.2024.
//

import UIKit

class HomeContentView: UIView {
    
    var name: String = "Sarthak"
    
    // MARK: - Subviews
    private lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var greetingLabel: UILabel = {
        let label = UILabel()
        label.attributedText = createAttributedText(withName: name)
        label.numberOfLines = 0 // Для переноса строк
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private lazy var categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Category"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var categorySegmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["Breakfast", "Lunch", "Dinner"])
        control.selectedSegmentIndex = 0
        control.translatesAutoresizingMaskIntoConstraints = false
        return control
    }()
    
    private lazy var recipesCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(RecipeCollectionViewCell.self, forCellWithReuseIdentifier: "RecipeCell")
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    private lazy var tabBar: UITabBar = {
        let tab = UITabBar()
        tab.translatesAutoresizingMaskIntoConstraints = false
        // Добавь табы...
        return tab
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupViews()
        setupLayout()
    }
    

    
    // MARK: - Setup
    private func setupViews() {
        addSubview(headerView)
        headerView.addSubview(greetingLabel)
//        headerView.addSubview(jobTitleLabel)
        
        addSubview(categoryLabel)
        addSubview(categorySegmentedControl)
        
        addSubview(recipesCollectionView)
        
        addSubview(tabBar)
        
        // Настройка делегатов и источников данных...
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            // HeaderView constraints
            headerView.topAnchor.constraint(equalTo: self.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 140),
            
            // GreetingLabel constraints
            greetingLabel.centerYAnchor.constraint(equalTo: headerView.centerYAnchor, constant: 10),
            greetingLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor, constant: 16),
            greetingLabel.heightAnchor.constraint(equalToConstant: 100),
            
            // CategoryLabel constraints
            categoryLabel.topAnchor.constraint(equalTo: headerView.bottomAnchor, constant: 16),
            categoryLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            
            // CategorySegmentedControl constraints
            categorySegmentedControl.topAnchor.constraint(equalTo: categoryLabel.bottomAnchor, constant: 8),
            categorySegmentedControl.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            categorySegmentedControl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            // RecipesCollectionView constraints
            recipesCollectionView.topAnchor.constraint(equalTo: categorySegmentedControl.bottomAnchor, constant: 16),
            recipesCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            recipesCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            recipesCollectionView.bottomAnchor.constraint(equalTo: tabBar.topAnchor, constant: -16),
            
            // TabBar constraints
            tabBar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tabBar.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    private func createAttributedText(withName name: String) -> NSAttributedString {
           let firstLine = "Hi, \(name)"
           let secondLine = "\nUI Designer & Cook"
           let fullText = firstLine + secondLine
           
           let attributedText = NSMutableAttributedString(string: fullText)
           
           // Настройка атрибутов для "Hi, "
           if let range = fullText.range(of: "Hi, ") {
               let nsRange = NSRange(range, in: fullText)
               attributedText.addAttributes(
                   [.font: UIFont(name: "Poppins-Regular", size: 18)!,
                    .foregroundColor: UIColor.white],
                   range: nsRange
               )
           }
           
           // Настройка атрибутов для имени
           if let nameRange = fullText.range(of: name) {
               let nsRange = NSRange(nameRange, in: fullText)
               attributedText.addAttributes(
                   [.font: UIFont(name: "Poppins-SemiBold", size: 18)!,
                    .foregroundColor: UIColor.white],
                   range: nsRange
               )
           }
           
           // Настройка атрибутов для "UI Designer & Cook"
           if let jobRange = fullText.range(of: "UI Designer & Cook") {
               let nsRange = NSRange(jobRange, in: fullText)
               attributedText.addAttributes(
                   [.font: UIFont(name: "Poppins-Regular", size: 18)!,
                    .foregroundColor: UIColor.white],
                   range: nsRange
               )
           }
           
           return attributedText
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

