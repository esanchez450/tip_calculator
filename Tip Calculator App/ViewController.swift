//
//  ViewController.swift
//  Tip Calculator App
//
//  Created by Emmanuel Sanchez on 1/14/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    var group: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTIp(_ sender: Any) {
        // Get bill amount from the text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill *
            tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount Label
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func button9(_ sender: Any) {
        var button = billAmountTextField.text!
        
           totalLabel.text = button
        }
    }
}

