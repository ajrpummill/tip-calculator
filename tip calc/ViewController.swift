//
//  ViewController.swift
//  tip calc
//
//  Created by Anthony Pummill on 9/20/19.
//  Copyright © 2019 Anthony Pummill. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipController: UISegmentedControl!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func onTap(_ sender: Any)
    {
        view.endEditing(true)
    }
  
    @IBAction func calculateTip(_ sender: Any)
    {
        let bill = Double(billField.text!) ?? 0
        let tipPecent = [0.1, 0.15, 0.2, 0.25]
        let tip = bill * tipPecent[tipController.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

