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
    
    @IBOutlet weak var compareLbl: UILabel!
    
    @IBOutlet weak var goalLbl: UILabel!
    
    @IBOutlet weak var lowGoal: UIButton!
    
    @IBOutlet weak var midGoal: UIButton!
    
    @IBOutlet weak var highGoal: UIButton!
    
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
        
        //Consider adding region if statement for unit system
        weightTxt.placeholder = nil
        weightTxt.placeholder = "Weight in \("lbs")"
        
        
        heightTxt.placeholder = nil
        heightTxt.placeholder = "Height in \("inches")"
        
        BMIResult.isHidden = true
        yourBMILbl.isHidden = true
        resetBtn.isHidden = true
        compareLbl.isHidden = true
        goalLbl.isHidden = true
        lowGoal.isHidden = true
        midGoal.isHidden = true
        highGoal.isHidden = true
    }

    @objc func calculate(){
        if let weightTxt = weightTxt.text, let heightTxt = heightTxt.text {
            if let weight = Double(weightTxt), let height = Double(heightTxt) {
            view.endEditing(true)
            BMIResult.isHidden = false
            yourBMILbl.isHidden = false
            resetBtn.isHidden = false
            goalLbl.isHidden = false
            lowGoal.isHidden = false
            midGoal.isHidden = false
            highGoal.isHidden = false
                BMIResult.text = "\(BMI.getBMI(forWeight: weight, andHeight: height))"
                
            }
        }
    }
    
     //Consider adding french grading system conversion for goal buttons according to region
    
    @IBAction func lowGoalPressed(_ sender: Any) {
        compareLbl.isHidden = false
        let averageBMI: Double = averageLowGoalBMI
        //Consider simplifing weight and height
        if let weightTxt = weightTxt.text, let heightTxt = heightTxt.text {
            if let weight = Double(weightTxt), let height = Double(heightTxt) {
                let poundsToLoose: Double = ((averageBMI/703*height*height-weight) * 10).rounded() / 10
                if poundsToLoose > 0 {
                    compareLbl.text = "Good work! You are below the average BMI of \(averageBMI) for a 5.12a climber"
                }
                else{
                    compareLbl.text = "The average 5.12a climber has a BMI of \(averageBMI). Consider losing \(poundsToLoose * -1) lbs in addition to your normal training program to reach your goal"
                }
            }
        }
    }
    
    @IBAction func midGoalPressed(_ sender: Any) {
        compareLbl.isHidden = false
        let averageBMI: Double = averageMidGoalBMI
         //Consider simplifing weight and height
        if let weightTxt = weightTxt.text, let heightTxt = heightTxt.text {
            if let weight = Double(weightTxt), let height = Double(heightTxt) {
                let poundsToLoose: Double = ((averageBMI/703*height*height-weight) * 10).rounded() / 10
                if poundsToLoose > 0 {
                    compareLbl.text = "Good work! You are below the average BMI of \(averageBMI) for a 5.13a climber"
                }
                else{
                    compareLbl.text = "The average 5.13a climber has a BMI of \(averageBMI). Consider losing \(poundsToLoose * -1) lbs in addition to your normal training program to reach your goal"
                }
            }
        }
    }
    
    
    @IBAction func highGoalPressed(_ sender: Any) {
        compareLbl.isHidden = false
        let averageBMI: Double = averageHighGoalBMI
         //Consider simplifing weight and height
        if let weightTxt = weightTxt.text, let heightTxt = heightTxt.text {
            if let weight = Double(weightTxt), let height = Double(heightTxt) {
                let poundsToLoose: Double = ((averageBMI/703*height*height-weight) * 10).rounded() / 10
                if poundsToLoose > 0 {
                    compareLbl.text = "Good work! You are below the average BMI of \(averageBMI) for a 5.14a climber"
                }
                else{
                    compareLbl.text = "The average 5.14a climber has a BMI of \(averageBMI). Consider losing \(poundsToLoose * -1) lbs in addition to your normal training program to reach your goal"
                }
            }
        }
    }
    
    
    @IBAction func resetPressed(_ sender: Any) {
        BMIResult.isHidden = true
        yourBMILbl.isHidden = true
        resetBtn.isHidden = true
        compareLbl.isHidden = true
        goalLbl.isHidden = true
        lowGoal.isHidden = true
        midGoal.isHidden = true
        highGoal.isHidden = true
        weightTxt.text = ""
        heightTxt.text = ""
    }
    
}

