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
    
    @IBOutlet weak var nameOutput: UILabel!
    
    
    @IBOutlet weak var taxRMS: UILabel!
    
    @IBOutlet weak var errorName: UILabel!
    @IBOutlet weak var errorIncome: UILabel!
    
    
  //MARK: Methods
    
    override func viewDidLoad() {

             
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        }

    @IBAction func caculateTax(_ sender: Any) {
        
guard let name = NameInput.text else{ errorName.text=("Please type your name")
            return }
        
guard let stringAnnualIncome = (annualIncome.text) else{ errorIncome.text=("Please type your annual income")
        return }
        
guard let doubleAnnualIncome = Double(stringAnnualIncome)  else{ errorIncome.text=("Please type a whole number")
        return }
        
        
let taxBracket1Overall = 7144.5
let taxBracket2Overall = 9763.95 + taxBracket1Overall
let taxBracket3Overall = 13626.1 + taxBracket2Overall
let taxBracket4Overall =  18184.16 + taxBracket3Overall
let personNameMessage = ("Your Federal Tax Owing is")

   
        
    switch doubleAnnualIncome {
    case 0...47630:
        let taxBracket1 = doubleAnnualIncome * 0.15
        taxOwing.text = String(taxBracket1)
        taxRate.text = String(taxBracket1/doubleAnnualIncome * 100)
        nameOutput.text = String("\(NameInput.text)\(personNameMessage)")
        
    
    case 47631...95259:
        let taxBracket2 = (doubleAnnualIncome - 47630) * 0.205
        taxOwing.text = String(taxBracket2 + taxBracket1Overall)
        taxRate.text = String((taxBracket2 + taxBracket1Overall)/doubleAnnualIncome * 100)
        nameOutput.text = String("\(NameInput.text)\(personNameMessage)")
        
    case 952260...147667:
        let taxBracket3 = (doubleAnnualIncome - 95259) * 0.26
        taxOwing.text = String(taxBracket3 + taxBracket2Overall)
        taxRate.text = String((taxBracket3 + taxBracket2Overall)/doubleAnnualIncome * 100)
        nameOutput.text = String("\(NameInput.text)\(personNameMessage)")
        
    case 147668...210371:
        let taxBracket4 = (doubleAnnualIncome - 147667) * 0.29
        taxOwing.text = String(taxBracket4 + taxBracket3Overall)
        taxRate.text = String((taxBracket4 + taxBracket3Overall)/doubleAnnualIncome * 100)
        nameOutput.text = String("\(NameInput.text)\(personNameMessage)")
            
   
        default:
            let taxBracket5 = (doubleAnnualIncome - 210371) * 0.33
            taxOwing.text = String(taxBracket5 + taxBracket4Overall)
            taxRate.text = String((taxBracket5 + taxBracket4Overall)/doubleAnnualIncome * 100)
        nameOutput.text = String("\(NameInput.text)\(personNameMessage)")
        
        
        }
    }
    
}

