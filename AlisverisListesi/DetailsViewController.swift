//
//  DetailsViewController.swift
//  AlisverisListesi
//
//  Created by Mustafa TAVASLI on 20.02.2024.
//

import UIKit
import PhotosUI

class DetailsViewController: UIViewController, UINavigationControllerDelegate, PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: true)
        if let itemprovider = results.first?.itemProvider{
            
            if itemprovider.canLoadObject(ofClass: UIImage.self){
                
                itemprovider.loadObject(ofClass: UIImage.self) { image , error  in
                    if let selectedImage = image as? UIImage{
                        DispatchQueue.main.async {
                            self.imageView.image = selectedImage
                        }
                    }
                }
            }
            
        }
    }
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var isimTextField: UITextField!
    @IBOutlet weak var fiyatTextField: UITextField!
    @IBOutlet weak var bedenTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(klavyeKapatma))
        view.addGestureRecognizer(gestureRecognizer)
        
        // Image Ekleme
        imageView.isUserInteractionEnabled = true
        let imageGestureRecognizer = UIGestureRecognizer(target: self, action: #selector(gorselSecimi))
        imageView.addGestureRecognizer(imageGestureRecognizer)
        
    }
    
    func configureImagePicker(){
        var configuration = PHPickerConfiguration()
        configuration.filter = .images
        configuration.selectionLimit = 1
        let pickerViewController = PHPickerViewController(configuration: configuration)
        pickerViewController.delegate = self
        present(pickerViewController, animated: true)
    }
    
    @objc func gorselSecimi(){
        configureImagePicker()
    }
    
    @objc func klavyeKapatma() {
        view.endEditing(true)
    }
    
    @IBAction func kaydetButonu(_ sender: Any) {
    }
    
}
