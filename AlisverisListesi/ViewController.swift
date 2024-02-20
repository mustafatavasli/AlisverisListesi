//
//  ViewController.swift
//  AlisverisListesi
//
//  Created by Mustafa TAVASLI on 20.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(ekleButonu))
    }
    
    @objc func ekleButonu() {
        
        performSegue(withIdentifier: "todetailsVC", sender: nil)
        
    }

}

