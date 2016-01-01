//
//  ViewController.swift
//  TipComputationApplication
//
//  Created by Student on 12/31/15.
//  Copyright (c) 2015 Kelechi Nwachukwu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFiledPro: UITextField!
   
    @IBOutlet weak var textfieldVar: UITextField!

    @IBAction func tipPercFunc(sender: UISegmentedControl) {
        println("---")
        println(tipPercentageVar.selectedSegmentIndex)
        textFieldChanged(textFiledPro)
    }
 
    @IBOutlet weak var tipPercentageVar: UISegmentedControl!
    @IBAction func tipPercentage(sender: UISegmentedControl) {
            }
    @IBOutlet weak var TextLabelTotal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        textFiledPro.becomeFirstResponder()        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func textFieldChanged(sender: UITextField) {
        let defaults = NSUserDefaults.standardUserDefaults()
        let tipPer:Double = defaults.doubleForKey("tipPer")
        
        var actualPerValue = 0.1
        var actualPer = tipPercentageVar.selectedSegmentIndex
        if actualPer == 0 {
            actualPerValue = 0.05
            
        }
        if actualPer == 1 {
            actualPerValue = 0.10
        }
        if actualPer == 2 {
            actualPerValue = 0.15
        }
          var amount = NSString(string:sender.text).doubleValue
//        if tipPer == 0.5 {
//            actualPerValue = 0.2
//            
//        }
//        if tipPer == 1.5 {
//            actualPerValue = 0.22
//        }
//        println("View Will appear: \(tipPer)")

        var tipValue = amount*actualPerValue
        
        TextLabelTotal.text = "Total = $\(amount+tipValue)"
        labelVar.text = "Tips = $\(tipValue)"

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var labelVar: UILabel!

}

