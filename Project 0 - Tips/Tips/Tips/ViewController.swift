//
//  ViewController.swift
//  tips
//
//  Created by Christopher Ryan on 9/19/15.
//  Copyright © 2015 Christopher Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var peopleLabel: UILabel!
    @IBOutlet weak var peopleControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPeopleChanged(_ sender: AnyObject) {
    
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var peopleSplits = [1.0, 2.0, 3.0, 4.0, 5.0]
        let peopleSplit = peopleSplits[peopleControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage / peopleSplit
        let total = billAmount / peopleSplit + tip
        
        tipLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total )
    
    }
    @IBAction func onServiceChanged(_ sender: AnyObject) {

        
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var peopleSplits = [1.0, 2.0, 3.0, 4.0, 5.0]
        let peopleSplit = peopleSplits[peopleControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage / peopleSplit
        let total = billAmount / peopleSplit + tip
        
        tipLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total )
    
    }

    @IBAction func onEditingChanged(_ sender: AnyObject) {
        
        var tipPercentages = [0.18, 0.2, 0.22]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
 
        var peopleSplits = [1.0, 2.0, 3.0, 4.0, 5.0]
        let peopleSplit = peopleSplits[peopleControl.selectedSegmentIndex]
        
        let billAmount = NSString(string: billField.text!).doubleValue
        let tip = billAmount * tipPercentage / peopleSplit
        let total = billAmount / peopleSplit + tip
        
        tipLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total )
    }
    
    @IBAction func onTap(_ sender: AnyObject) {

        view.endEditing(true)
        
    }

}

