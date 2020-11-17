//
//  ViewController.swift
//  TipCalculator
//
//  Created by Lakitaya, Dilianny on 11/17/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        //dimiss keyboard
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount
        //Anything to the left of question marks if it's not a valid i.e a number change it to 0.
        let bill = Double(billField.text!) ?? 0
        //calculate tip and total
        let tipPercentages = [0.1, 0.15,0.2]

        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update the tip and total labels
        //Adding variables in String use \([variablename]) within the "". Or use string format
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = "$\(total)"
    }
    
}

