//
//  RecipeCollectionCell.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 13.03.2024.
//

import UIKit
// my realization
//class RecipeCollectionCell: UICollectionViewCell {
//    static let id = "RecipeCollectionCell"
//
//    var viewModel: RecipeViewModelProtocol! {
//        didSet {
//            title.text = viewModel.recipeTitle
//        }
//    }
//
//    private let title: UILabel = {
//        let lbl = UILabel()
//        lbl.backgroundColor = .clear
//        lbl.translatesAutoresizingMaskIntoConstraints = false
//        lbl.textColor = .white
//        lbl.textAlignment = .left
//        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
//
//        return lbl
//    }()
//
//    private let title: UILabel = {
//        let lbl = UILabel()
//        lbl.backgroundColor = .clear
//        lbl.translatesAutoresizingMaskIntoConstraints = false
//        lbl.textColor = .white
//        lbl.textAlignment = .left
//        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
//
//        return lbl
//    }()
//
//    private let title: UILabel = {
//        let lbl = UILabel()
//        lbl.backgroundColor = .clear
//        lbl.translatesAutoresizingMaskIntoConstraints = false
//        lbl.textColor = .white
//        lbl.textAlignment = .left
//        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
//
//        return lbl
//    }()
//
//    private lazy var backgroundImage: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.backgroundColor = .mainOrangeColor
//        imageView.clipsToBounds = true
//        imageView.contentMode = .scaleAspectFill
//        imageView.layer.cornerRadius = 10
//
//        return imageView
//    }()
//
//
//    #warning("Сделать градиент")
//    private lazy var blackoutBackground: UIView = {
//        let view = UIView()
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = .blackoutColor
//
//        return view
//    }()
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        contentView.addSubview(backgroundImage)
//        backgroundImage.addSubview(blackoutBackground)
//        backgroundImage.addSubview(title)
//
//        NSLayoutConstraint.activate([
//            backgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor),
//            backgroundImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//            backgroundImage.leftAnchor.constraint(equalTo: contentView.leftAnchor),
//            backgroundImage.rightAnchor.constraint(equalTo: contentView.rightAnchor),
//
//            title.leadingAnchor.constraint(equalTo: backgroundImage.leadingAnchor, constant: 12),
//            title.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor, constant: -16),
//            title.widthAnchor.constraint(equalTo: backgroundImage.widthAnchor, constant: -30),
//
//            blackoutBackground.bottomAnchor.constraint(equalTo: backgroundImage.bottomAnchor),
//            blackoutBackground.leftAnchor.constraint(equalTo: backgroundImage.leftAnchor),
//            blackoutBackground.rightAnchor.constraint(equalTo: backgroundImage.rightAnchor),
//            blackoutBackground.heightAnchor.constraint(equalToConstant: 56)
//        ])
//        contentView.clipsToBounds = false
//        contentView.backgroundColor = .clear
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

class RecipeCollectionViewCell: UICollectionViewCell {
    
    static let reuseIdentifier = "RecipeCollectionCell"

    
    private lazy var recipeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        imageView.backgroundColor = .mainOrangeColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var recipeTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var authorNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var likesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var savesLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var likeIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "LikeIconWhite") // Используй свои иконки
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var saveIconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "SaveIconWhite") // Используй свои иконки
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(recipe: Recipe) {
        recipeImageView.image = recipe.image
       recipeTitleLabel.text = recipe.title
       authorNameLabel.text = "by \(recipe.author)"
       likesLabel.text = "\(recipe.likeAmount)"
       savesLabel.text = "\(recipe.saveAmount)"
   }
    
    private func setupViews() {
        self.addSubview(recipeImageView)
        self.addSubview(recipeTitleLabel)
        self.addSubview(authorNameLabel)
        self.addSubview(likesLabel)
        self.addSubview(savesLabel)
        self.addSubview(likeIconImageView)
        self.addSubview(saveIconImageView)
        
        // Настройка AutoLayout
        NSLayoutConstraint.activate([
            recipeImageView.topAnchor.constraint(equalTo: self.topAnchor),
            recipeImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            recipeImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            recipeImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            recipeTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            recipeTitleLabel.bottomAnchor.constraint(equalTo: authorNameLabel.topAnchor, constant: -4),
            
            authorNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            authorNameLabel.bottomAnchor.constraint(equalTo: self.likeIconImageView.topAnchor, constant: -8),
            
            likeIconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            likeIconImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            
            likesLabel.leadingAnchor.constraint(equalTo: likeIconImageView.trailingAnchor, constant: 4),
            likesLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            
            saveIconImageView.leadingAnchor.constraint(equalTo: likesLabel.trailingAnchor, constant: 12),
            saveIconImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            
            savesLabel.leadingAnchor.constraint(equalTo: saveIconImageView.trailingAnchor, constant: 4),
            savesLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
        ])
    }
    
   
}
