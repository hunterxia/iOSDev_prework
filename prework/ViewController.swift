//
//  ViewController.swift
//  prework
//
//  Created by Hunter Xia on 2021/3/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
            let bill = Double(billAmountTextField.text!) ?? 0
            let tipPercentages = [0.15,0.18,0.2]
            let tip = bill*tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            tipAmountLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format:"$%.2f",total)
    }

}

