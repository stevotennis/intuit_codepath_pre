//
//  Setting2ViewController.swift
//  tippy2
//
//  Created by Steven Liu on 3/13/17.
//  Copyright © 2017 Steven Liu. All rights reserved.
//

import UIKit

class Setting2ViewController: UIViewController {
    @IBOutlet weak var tip1Textfield: UITextField!
    @IBOutlet weak var tip2Textfield: UITextField!
    @IBOutlet weak var tip3Textfield: UITextField!
    @IBOutlet weak var venmoButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func SaveSettings(_ sender: Any) {
        let tip1 = Double(tip1Textfield.text!) ?? 0.18
        UserDefaults.standard.set(tip1, forKey: "tip1")
        UserDefaults.standard.synchronize()
        
        let tip2 = Double(tip2Textfield.text!) ?? 0.20
        UserDefaults.standard.set(tip2, forKey: "tip2")
        UserDefaults.standard.synchronize()
        
        let tip3 = Double(tip3Textfield.text!) ?? 0.25
        UserDefaults.standard.set(tip3, forKey: "tip3")
        UserDefaults.standard.synchronize()
        
        UserDefaults.standard.set(true, forKey: "settingChanged")
        UserDefaults.standard.synchronize()

    }

    @IBAction func changeVenmoSetting(_ sender: AnyObject) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
