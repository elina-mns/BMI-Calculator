//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.1f", sender.value) + "m"
        
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

