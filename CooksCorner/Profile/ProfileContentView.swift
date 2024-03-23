//
//  ProfileContentView.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import UIKit
import SnapKit

class ProfileContentView: UIView {
    private lazy var profileTitleLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 22)
        label.textColor = UIColor.black
        label.text = "Profile"
        return label
    }()
    
    private lazy var logOutButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "logOutIcon")
        button.setBackgroundImage(image, for: .normal)
        return button
    }()
    
    private lazy var profileIcon: UIImageView = {
        var image = UIImageView()
        image.contentMode = .scaleAspectFill
        image.image = UIImage(named: "ProfilePhoto")
        image.clipsToBounds = true
        image.layer.cornerRadius = 88 / 2
        return image
    }()
    
    private lazy var recipeCountLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 20)
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.text = "29"
        return label
    }()
    
    private lazy var recipeLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 14)
        label.textColor = UIColor.gray
        label.text = "Recipe"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var followersCountLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 20)
        label.textColor = UIColor.black
        label.text = "144"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var followersLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 14)
        label.textColor = UIColor.gray
        label.text = "Followers"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var followingCountLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 20)
        label.textColor = UIColor.black
        label.text = "100"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var followingLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Regular", size: 14)
        label.textColor = UIColor.gray
        label.text = "Following"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var userNameLable: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.textColor = UIColor.black
        label.text = "Sarthak Ranjan Hota"
        label.textAlignment = .left
        return label
    }()
    
    private lazy var userBioLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 12)
        label.textColor = UIColor.gray
        label.text = "I'm a passionate chef who loves creating delicious dishes with flair."
        label.textAlignment = .left
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var manageProfileButton: UIButton = {
        let button = UIButton()
        button.setTitle("Manage Profile", for: .normal)
        button.titleLabel?.font = UIFont(name: "Avenir Next Medium", size: 14)
        button.setTitleColor(.orange, for: .normal)
        button.backgroundColor = .systemGray4
        button.contentMode = .center
        button.layer.cornerRadius = 6
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var myRecipeTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.textColor = UIColor.black
        label.text = "My recipe"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var savedRecipeTitle: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir Next Medium", size: 16)
        label.textColor = UIColor.gray
        label.text = "Saved recipe"
        label.textAlignment = .center
        return label
    }()
    
    lazy var recipeCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
//        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints =  false
        collectionView.register(RecipeCollectionViewCell.self, forCellWithReuseIdentifier: RecipeCollectionViewCell.reuseIdentifier)
        return collectionView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUp() {
        setUpSubviews()
        setUpConstraints()
    }
    
    private func setUpSubviews() {
        addSubview(profileTitleLable)
        addSubview(logOutButton)
        addSubview(profileIcon)
        addSubview(recipeCountLable)
        addSubview(recipeLable)
        addSubview(followersCountLable)
        addSubview(followersLable)
        addSubview(followingCountLable)
        addSubview(followingLable)
        addSubview(userNameLable)
        addSubview(userBioLabel)
        addSubview(manageProfileButton)
        addSubview(myRecipeTitle)
        addSubview(savedRecipeTitle)
        addSubview(recipeCollectionView)
    }
    
    private func setUpConstraints() {
        profileTitleLable.snp.makeConstraints {
            $0.top.equalToSuperview().offset(61)
            $0.leading.equalTo(20)
            $0.width.equalTo(69)
            $0.height.equalTo(28)
        }
        
        logOutButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(61)
            $0.trailing.equalTo(-20)
            $0.width.height.equalTo(24)
        }
        
        profileIcon.snp.makeConstraints {
            $0.top.equalToSuperview().offset(116)
            $0.leading.equalTo(20)
            $0.width.height.equalTo(88)
        }
        
        recipeCountLable.snp.makeConstraints {
            $0.top.equalToSuperview().offset(132)
            $0.leading.equalTo(profileIcon.snp.trailing).offset(29)
            $0.width.equalTo(48)
            $0.height.equalTo(28)
        }
        
        recipeLable.snp.makeConstraints {
            $0.top.equalTo(recipeCountLable.snp.bottom)
            $0.leading.equalTo(profileIcon.snp.trailing).offset(29)
            $0.width.equalTo(48)
            $0.height.equalTo(28)
        }
        
        followersCountLable.snp.makeConstraints {
            $0.top.equalToSuperview().offset(132)
            $0.leading.equalTo(recipeCountLable.snp.trailing).offset(17)
            $0.width.equalTo(65)
            $0.height.equalTo(28)
        }
        
        followersLable.snp.makeConstraints {
            $0.top.equalTo(followersCountLable.snp.bottom)
            $0.leading.equalTo(recipeLable.snp.trailing).offset(17)
            $0.width.equalTo(65)
            $0.height.equalTo(28)
        }
        
        followingCountLable.snp.makeConstraints {
            $0.top.equalToSuperview().offset(132)
            $0.leading.equalTo(followersCountLable.snp.trailing).offset(17)
            $0.width.equalTo(66)
            $0.height.equalTo(28)
        }
        
        followingLable.snp.makeConstraints {
            $0.top.equalTo(followingCountLable.snp.bottom)
            $0.leading.equalTo(followersLable.snp.trailing).offset(17)
            $0.width.equalTo(66)
            $0.height.equalTo(28)
        }
        
        userNameLable.snp.makeConstraints {
            $0.top.equalTo(profileIcon.snp.bottom).offset(10)
            $0.leading.equalTo(20)
            $0.trailing.equalTo(-20)
            $0.height.equalTo(28)
        }
        
        userBioLabel.snp.makeConstraints {
            $0.top.equalTo(userNameLable.snp.bottom).offset(5)
            $0.leading.equalTo(20)
            $0.trailing.equalTo(-20)
            $0.height.equalTo(34)
        }
        
        manageProfileButton.snp.makeConstraints {
            $0.top.equalTo(userBioLabel.snp.bottom).offset(10)
            $0.leading.equalTo(20)
            $0.trailing.equalTo(-20)
            $0.height.equalTo(44)
        }
        
        myRecipeTitle.snp.makeConstraints {
            $0.top.equalTo(manageProfileButton.snp.bottom).offset(16)
            $0.leading.equalTo(20)
            $0.width.equalTo(79)
            $0.height.equalTo(28)
        }
        
        savedRecipeTitle.snp.makeConstraints {
            $0.top.equalTo(manageProfileButton.snp.bottom).offset(16)
            $0.trailing.equalTo(-20)
            $0.width.equalTo(109)
            $0.height.equalTo(28)
        }
        
        recipeCollectionView.snp.makeConstraints {
            $0.top.equalTo(savedRecipeTitle.snp.bottom).offset(16)
            $0.leading.trailing.bottom.equalToSuperview()
            $0.width.equalTo(169)
            $0.height.equalTo(209)
        }
    }
}
