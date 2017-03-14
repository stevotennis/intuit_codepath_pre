//
//  ViewController.swift
//  tippy2
//
//  Created by Steven Liu on 3/10/17.
//  Copyright © 2017 Steven Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var peopleField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UserDefaults.standard.set(false, forKey: "settingChanged")
        UserDefaults.standard.synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if(UserDefaults.standard.bool(forKey: "settingChanged") == true){
            let tip1 = UserDefaults.standard.integer(forKey: "tip1")
            let tip2 = UserDefaults.standard.integer(forKey: "tip2")
            let tip3 = UserDefaults.standard.integer(forKey: "tip3")
            
            let tipPercentages = [Double(tip1)/100.0, Double(tip2)/100.0, Double(tip3)/100.0]
            
            let bill = Double(billField.text!) ?? 0
            let people = Double(peopleField.text!) ?? 1
            let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
            let total = bill + tip
            let split = total/people
        
            self.tipControl.setTitle(String(format: "%d", tip1)+"%", forSegmentAt: 0)
            self.tipControl.setTitle(String(format: "%d", tip2)+"%", forSegmentAt: 1)
            self.tipControl.setTitle(String(format: "%d", tip3)+"%", forSegmentAt: 2)
            
            tipLabel.text = String(format: "$%.2f", tip)
            totalLabel.text = String(format: "$%.2f", total)
            splitLabel.text = String(format: "$%.2f", split)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.25]
        
        /*
         if(UserDefaults.standard.bool(forKey: "settingChanged") == true){
            /*TODO: reflect setting change*/
         }
         */
        
        let bill = Double(billField.text!) ?? 0
        let people = Double(peopleField.text!) ?? 1
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = total/people
        
        
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        splitLabel.text = String(format: "$%.2f", split)
    }

    @IBAction func calcSplit(_ sender: AnyObject) {
        let tipPercentages = [0.18, 0.20, 0.25]
        
        /*
         if(UserDefaults.standard.bool(forKey: "settingChanged") == true){
         /*TODO: reflect setting change*/
         }
         */
        
        let bill = Double(billField.text!) ?? 0
        let people = Double(peopleField.text!) ?? 1
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let split = total/people
        
        splitLabel.text = String(format: "$%.2f", split)
    }
    
    /*
     override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
     */
}

