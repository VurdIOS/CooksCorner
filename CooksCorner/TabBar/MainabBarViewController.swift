//
//  MainabBarViewController.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 23.03.2024.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
        tabBar.tintColor = .mainOrangeColor
    }

    private func generateTabBar() {
        viewControllers = [
            generateVC(viewConroller: HomeViewController(viewModel: HomeViewModel()),
                       image: UIImage(named: "HomeTB")),
            generateVC(viewConroller: SearchViewController(),
                       image: UIImage(named: "SearchTB")),
            generateVC(viewConroller: ProfileViewController(viewModel: ProfileViewModel()),
                       image: UIImage(named: "ProfileTB")),

        ]
    }

    private func generateVC(viewConroller: UIViewController,
                            image: UIImage?) -> UIViewController {
        viewConroller.tabBarItem.image = image
        return UINavigationController(rootViewController: viewConroller)
    }
}


