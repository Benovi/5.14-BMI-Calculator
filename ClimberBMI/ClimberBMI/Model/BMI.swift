//
//  BMI.swift
//  ClimberBMI
//
//  Created by Ben Oveson on 3/6/18.
//  Copyright © 2018 Ben Oveson. All rights reserved.
//

import Foundation

//fix so number is rounded to one decimal
//add functionality for imperial system

let locale = Locale.current

class BMI {
    class func getBMI(forWeight weight: Double, andHeight height: Double) -> Double {
        return round(weight / ((height / 100) * (height / 100)))
    }
    
}


// to calculate BMI in the metric system BMI = kg/(cm/100)^2
// in the imperial system BMI = lb/in^2*703
   //return round(weight / ((height * height))*703)
