//
//  BMI.swift
//  ClimberBMI
//
//  Created by Ben Oveson on 3/6/18.
//  Copyright © 2018 Ben Oveson. All rights reserved.
//

import Foundation


//Consider adding functionality for imperial system

class BMI {
    class func getBMI(forWeight weight: Double, andHeight height: Double) -> Double {
        return (((weight / ((height * height))*703)) * 10).rounded() / 10
    }
    
}



// to calculate BMI in the metric system
    //return ((weight / ((height / 100) * (height / 100))) * 10).rounded() / 10
// to calculate BMI in the imperial system
   //return (((weight / ((height * height))*703)) * 10).rounded() / 10
