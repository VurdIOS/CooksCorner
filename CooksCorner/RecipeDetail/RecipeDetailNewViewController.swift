//
//  RecipeDetailNewViewController.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 25.03.2024.
//

import UIKit

class RecipeDetailNewViewController: UIViewController {
    
    let viewModel: RecipeDetailNEWViewModelProtocol
    let contentView = RecipedetailNewContentView()
    
    override func loadView() {
        view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpCollectionView()
    }
    
    init(viewModel: RecipeDetailNEWViewModelProtocol) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    private func setUpCollectionView() {
        contentView.tableView.delegate = self
        contentView.tableView.dataSource = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}

extension RecipeDetailNewViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Начали создавать таблицу")
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TopCell.reuseIdentifier, for: indexPath) as! TopCell
            cell.configure(image: viewModel.recipe.image)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: BottomCell.reuseIdentifier, for: indexPath) as! BottomCell
            cell.viewModel = viewModel.getDataForBottomCell()
            cell.selectionStyle = .none
            return cell
        }
    }
}
extension RecipeDetailNewViewController: UITableViewDelegate {
    // MARK: - Table View Delegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 389
        } else {
            return UITableView.automaticDimension
        }
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            cell.layer.zPosition = 1
        }
    }
}

