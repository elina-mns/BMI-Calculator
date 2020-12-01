//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Elina Mansurova on 2020-12-01.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct Calculator {
    
    var bmi: Float?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / (height * height)
    }
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1F", bmi ?? 0.0)
        return bmiTo1Decimal
    }
}
