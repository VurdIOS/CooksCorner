//
//  TopCell.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 25.03.2024.
//

import UIKit

class BottomCell: UITableViewCell {
    
    static let reuseIdentifier = "BottomTableViewCell"
    
    var viewModel: BottomCellViewModelProtocol! {
        didSet {
            NameLabel.text = viewModel.recipeName
            durationLabel.text = "\(viewModel.recipeDuration) min"
            descriptionLabel.text = viewModel.recipeDescription
            difficultyLevelLabel.text = viewModel.recipeLevel
            authorLabel.text = "by \(viewModel.author)"
            likeAmountLabel.text = String(viewModel.recipeLikesAmount)
            configureComments()
        }
    }

    private let NameLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Poppins-Medium", size: 20)!
        label.translatesAutoresizingMaskIntoConstraints = false
        return label

    }()
    
    private let clockIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "ClockIcon")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    private let durationLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 14)!
        label.textColor = UIColor.orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let difficultyLevelLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 12)!
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.backgroundColor = .mainOrangeColor
        label.textAlignment = .center
        label.layer.cornerRadius = 11
        label.clipsToBounds = true
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let authorLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 12)!
        label.translatesAutoresizingMaskIntoConstraints = false
        return label

    }()
    
    private let likeIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "LikeIconBlack")
        image.tintColor = .black
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let likeAmountLabel: UILabel = {
        var label = UILabel()
        label.font = UIFont(name: "Poppins-Regular", size: 12)!
        label.textColor = UIColor.black
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let savedIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .center
        image.image = UIImage(named: "SaveIconBlack")
        
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let descriptionTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Description"
        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let descriptionLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont(name: "Poppins-Regular", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let ingridientsTitleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Ingridients"
        lbl.font = UIFont(name: "Poppins-Medium", size: 16)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    private let ingridientsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 31
        stackView.alignment = .fill
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
        contentView.layer.cornerRadius = 36
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let offset: CGFloat = 30
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: -offset, left: 0, bottom: 0, right: 0))
        
    }
    
    private func updateCell() {

        
    }
    
    private func setupLayout() {
        contentView.addSubview(NameLabel)
        contentView.addSubview(clockIcon)
        contentView.addSubview(durationLabel)
        contentView.addSubview(difficultyLevelLabel)
        contentView.addSubview(authorLabel)
        contentView.addSubview(likeIcon)
        contentView.addSubview(likeAmountLabel)
        contentView.addSubview(savedIcon)
        contentView.addSubview(descriptionTitleLabel)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(ingridientsTitleLabel)
        contentView.addSubview(ingridientsStackView)
        
        
        NSLayoutConstraint.activate([
            NameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -10),
            NameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            NameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            NameLabel.heightAnchor.constraint(equalToConstant: 60),
            
            clockIcon.topAnchor.constraint(equalTo: NameLabel.bottomAnchor, constant: 0),
            clockIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            clockIcon.widthAnchor.constraint(equalToConstant: 20),
            
            durationLabel.centerYAnchor.constraint(equalTo: clockIcon.centerYAnchor),
            durationLabel.leadingAnchor.constraint(equalTo: clockIcon.trailingAnchor, constant: 8),
            durationLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            durationLabel.heightAnchor.constraint(equalToConstant: 11),
            
            difficultyLevelLabel.topAnchor.constraint(equalTo: durationLabel.bottomAnchor, constant: 12),
            difficultyLevelLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            difficultyLevelLabel.widthAnchor.constraint(equalToConstant: 50),
            difficultyLevelLabel.heightAnchor.constraint(equalToConstant: 22),
            
            authorLabel.topAnchor.constraint(equalTo: difficultyLevelLabel.bottomAnchor, constant: 12),
            authorLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            authorLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            authorLabel.heightAnchor.constraint(equalToConstant: 18),
            
            likeIcon.topAnchor.constraint(equalTo: authorLabel.bottomAnchor, constant: 16),
            likeIcon.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            likeIcon.widthAnchor.constraint(equalToConstant: 24),
            
            likeAmountLabel.centerYAnchor.constraint(equalTo: likeIcon.centerYAnchor),
            likeAmountLabel.leadingAnchor.constraint(equalTo: likeIcon.trailingAnchor, constant: 5),
            likeAmountLabel.widthAnchor.constraint(equalToConstant: 70),
            
            savedIcon.centerYAnchor.constraint(equalTo: likeAmountLabel.centerYAnchor),
            savedIcon.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            savedIcon.widthAnchor.constraint(equalToConstant: 24),
            
            descriptionTitleLabel.topAnchor.constraint(equalTo: savedIcon.bottomAnchor, constant: 32),
            descriptionTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            descriptionTitleLabel.heightAnchor.constraint(equalToConstant: 24),
            
            descriptionLabel.topAnchor.constraint(equalTo: descriptionTitleLabel.bottomAnchor, constant: 12),
            descriptionLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            ingridientsTitleLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 32),
            ingridientsTitleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            ingridientsTitleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            ingridientsStackView.topAnchor.constraint(equalTo: ingridientsTitleLabel.bottomAnchor, constant: 16),
            ingridientsStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            ingridientsStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
        ])
    }
    
    func configureComments() {
        ingridientsStackView.arrangedSubviews.forEach {
            ingridientsStackView.removeArrangedSubview($0)
            $0.removeFromSuperview()
        }
        var elementsAmount = 0
        
        for ingridient in viewModel.recipeIngridients {
            elementsAmount += 1
            let reviewLabel = IngridientView(configure: ingridient)
            ingridientsStackView.addArrangedSubview(reviewLabel)
            
        }
        ingridientsStackView.heightAnchor.constraint(equalToConstant: CGFloat(elementsAmount * 31)).isActive = true
    }
}
