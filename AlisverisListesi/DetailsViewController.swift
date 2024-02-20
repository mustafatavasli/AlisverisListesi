//
//  DetailsViewController.swift
//  AlisverisListesi
//
//  Created by Mustafa TAVASLI on 20.02.2024.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var isimTextField: UITextField!
    @IBOutlet weak var fiyatTextField: UITextField!
    @IBOutlet weak var bedenTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(klavyeKapatma))
        view.addGestureRecognizer(gestureRecognizer)
        
    }
    
    @objc func klavyeKapatma() {
        view.endEditing(true)
    }
    
    @IBAction func kaydetButonu(_ sender: Any) {
    }
    
}
