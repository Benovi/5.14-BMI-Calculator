//
//  ViewController.swift
//  ClimberBMI
//
//  Created by Ben Oveson on 3/5/18.
//  Copyright © 2018 Ben Oveson. All rights reserved.
//

import UIKit


class MainVC: UIViewController {

    @IBOutlet weak var weightTxt: BMITxtField!
    
    @IBOutlet weak var heightTxt: BMITxtField!
   
    @IBOutlet weak var BMIResult: UILabel!
    
    @IBOutlet weak var yourBMILbl: UILabel!
    
    @IBOutlet weak var resetBtn: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.7611742616, green: 0.5455978513, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        weightTxt.inputAccessoryView = calcBtn
        heightTxt.inputAccessoryView = calcBtn
        
        //add locale if statement for unit system
        weightTxt.placeholder = nil
        weightTxt.placeholder = "Weight in \("lbs")"
        
        
        heightTxt.placeholder = nil
        heightTxt.placeholder = "Height in \("inches")"
        
        BMIResult.isHidden = true
        yourBMILbl.isHidden = true
        resetBtn.isHidden = true
        
    }

    @objc func calculate(){
        //weightTxt is not the same var as the IB varweightTxt
        if let weightTxt = weightTxt.text, let heightTxt = heightTxt.text {
            if let weight = Double(weightTxt), let height = Double(heightTxt) {
            view.endEditing(true)
            BMIResult.isHidden = false
            yourBMILbl.isHidden = false
            resetBtn.isHidden = false
                BMIResult.text = "\(BMI.getBMI(forWeight: weight, andHeight: height))"
            }
        }
    }
    
    @IBAction func resetPressed(_ sender: Any) {
        BMIResult.isHidden = true
        yourBMILbl.isHidden = true
        resetBtn.isHidden = true
        weightTxt.text = ""
        heightTxt.text = ""
    }
}

