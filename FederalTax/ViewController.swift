//
//  ViewController.swift
//  FederalTax
//
//  Created by Attyani, Sawsan on 2019-11-02.
//  Copyright © 2019 Attyani, Sawsan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
         //MARK: Properties
    
    @IBOutlet weak var NameInput: UITextField!
    
    @IBOutlet weak var annualIncome: UITextField!
    
    @IBOutlet weak var taxOwing: UILabel!
    
    @IBOutlet weak var taxRate: UILabel!
    
    
  //MARK: Methods
    
    override func viewDidLoad() {

             
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }

    @IBAction func caculateTax(_ sender: Any) {
        
guard let name = (NameInput.text) else{ taxOwing.text=("Please type your name")
            return }
        
        
        
        
        
        
        
    }
    
}

