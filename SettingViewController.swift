//
//  SettingViewController.swift
//  tippy2
//
//  Created by Steven Liu on 3/10/17.
//  Copyright © 2017 Steven Liu. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var tip1Textfield: UITextField!
    @IBOutlet weak var tip2Textfield: UITextField!
    @IBOutlet weak var tip3Textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tip1Textfield.placeholder = String(format:"%.0f", UserDefaults.standard.double(forKey: "tip1") * 100)
        tip2Textfield.placeholder = String(format:"%.0f", UserDefaults.standard.double(forKey: "tip2") * 100)
        tip3Textfield.placeholder = String(format:"%.0f", UserDefaults.standard.double(forKey: "tip3") * 100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    @IBAction func saveTipSettings(_ sender: AnyObject) {
        let tip1 = Double(tip1Textfield.text!)
        UserDefaults.standard.set(tip1, forKey: "tip1")
        UserDefaults.standard.synchronize()
        
        let tip2 = Double(tip1Textfield.text!)
        UserDefaults.standard.set(tip2, forKey: "tip2")
        UserDefaults.standard.synchronize()
        
        let tip3 = Double(tip1Textfield.text!)
        UserDefaults.standard.set(tip3, forKey: "tip3")
        UserDefaults.standard.synchronize()
    }

}
