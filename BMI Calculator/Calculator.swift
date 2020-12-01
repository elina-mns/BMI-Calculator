//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Elina Mansurova on 2020-12-01.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct Calculator {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You could eat more", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1) )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are healthy", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1) )
        } else {
            bmi = BMI(value: bmiValue, advice: "You could exercise more", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1) )
        }
       
    }
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1F", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
}
