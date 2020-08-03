//
//  SettingsViewController.swift
//  tip
//
//  Created by Anthony Malpartidaa on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func pushSegue(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBOutlet weak var darkLightTheme: UISegmentedControl!
    @IBAction func backgroundColor(_ sender: Any) {
        if darkLightTheme.selectedSegmentIndex == 0 {
            let theColor = "green"
            let color = UserDefaults.standard
            color.setValue(theColor, forKey: "myColor")
            self.view.backgroundColor = UIColor(red:163/255, green:187/255, blue:183/255, alpha: 1)
        }else{
            let theColor = "white"
            let color =
            UserDefaults.standard
            color.setValue(theColor, forKey: "myColor")
            self.view.backgroundColor = UIColor.white
        }
    }
    @IBOutlet weak var tipPer1: UILabel!
    @IBOutlet weak var tipPer2: UILabel!
    @IBOutlet weak var tipPer3: UILabel!
    @IBOutlet weak var tipPercentageText: UITextField!
    @IBOutlet weak var tipPercentageText2: UITextField!
    @IBOutlet weak var tipPercentageText3: UITextField!
    
    @IBAction func saveChange1(_ sender: Any) {
        // save value to userDefaults
        let defaults = UserDefaults.standard
        defaults.set(tipPercentageText.text, forKey: "firstTip")
        defaults.synchronize()
    }
    @IBAction func saveChange2(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(tipPercentageText2.text, forKey: "secondTip")
        defaults.synchronize()
    }
    
    @IBAction func saveChange3(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(tipPercentageText3.text, forKey: "thirdTip")
        defaults.synchronize()
    }
}
