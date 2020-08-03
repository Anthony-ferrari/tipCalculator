//
//  ViewController.swift
//  tip
//
//  Created by Anthony Ferrari on 8/2/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBAction func onTap(_ sender: Any) {
    }
    @IBAction func caculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        // calc the tip and total
        // get tip percent from title of tipControl
        let percent1 = Double(tipControl.titleForSegment(at: 0)!) ?? 0
        let percent2 = Double(tipControl.titleForSegment(at: 1)!) ?? 0
        let percent3 = Double(tipControl.titleForSegment(at: 2)!) ?? 0
        
        let tipPercentages = [percent1/100, percent2/100, percent3/100]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        // update the tip and total labels
        tipPercentageLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        let defaults = UserDefaults.standard
        let firstChange = defaults.double(forKey: "firstTip")
        let secondChange = defaults.double(forKey: "secondTip")
        let thirdChange = defaults.double(forKey: "thirdTip")
//        print(firstChange)
//        print(secondChange)
//        print(thirdChange)
        let tipArray = [firstChange, secondChange, thirdChange]
        for i in 0..<3{
            tipControl.setTitle(String(format: "%.0f"+"%", tipArray[i]), forSegmentAt: i)
        }
        let colors = UserDefaults.standard
        let backgroundColor = colors.string(forKey:"myColor")!
        print(backgroundColor)
        if backgroundColor == "green"{
            self.view.backgroundColor = UIColor(red:163/255, green:187/255, blue:183/255, alpha: 1)
        }else{
            self.view.backgroundColor = UIColor.white
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
        super.viewDidAppear(animated)
        print("view did disappear")
    }
}

