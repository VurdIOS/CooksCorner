//
//  CreateRecipeViewController.swift
//  CooksCorner
//
//  Created by Камаль Атавалиев on 20.03.2024.
//

import UIKit

class CreateRecipeViewController: UIViewController {
    
    let contentView = CreateRecipeContentView()
    let viewModel = CreateRecipeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Create recipe"
        setupButtonsTargets()
    }
    
    
    override func loadView() {
        view = contentView
    }
    
    private func setupButtonsTargets() {
        contentView.addPhotoButton.addTarget(self, action: #selector(addPhotoButtonTapped), for: .touchUpInside)
        contentView.changePhotoButton.addTarget(self, action: #selector(addPhotoButtonTapped), for: .touchUpInside)
    }
    
    @objc func addPhotoButtonTapped() {
//           // Функция для отображения image picker
//           let imagePicker = UIImagePickerController()
//           imagePicker.delegate = self
//           imagePicker.sourceType = .photoLibrary
//           self.present(imagePicker, animated: true, completion: nil)

               let textField = UITextField()
               textField.placeholder = "Введите текст"
               textField.borderStyle = .roundedRect
        contentView.VStack.addArrangedSubview(textField)
        contentView.VStack.layoutIfNeeded()
        contentView.setupScrollViewHeight()
       }
}


extension CreateRecipeViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            // Устанавливаем выбранное изображение в ImageView и обновляем интерфейс
            contentView.recipePhotoImageView.image = pickedImage
            contentView.addPhotoButton.isHidden = true
            contentView.changePhotoButton.isHidden = false
            contentView.updateConstraintsForImage()
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}

extension CreateRecipeViewController: UINavigationControllerDelegate {
    
}

