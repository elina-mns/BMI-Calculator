//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Elina Mansurova on 2020-11-30.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue = "0.0"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        
    }
}
