//
//  SetViewController.swift
//  TipComputationApplication
//
//  Created by Student on 12/31/15.
//  Copyright (c) 2015 Kelechi Nwachukwu. All rights reserved.
//

import UIKit

class SetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tipSet(sender: UISegmentedControl) {
    let defaults = NSUserDefaults.standardUserDefaults()
        
        let tipValue:Double = defaults.doubleForKey("tipPer")
        defaults.setDouble(Double(sender.selectedSegmentIndex)+0.5, forKey: ("tipPer"))
        defaults.synchronize()
        println(sender.selectedSegmentIndex)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
