//
//  ViewController.swift
//  ClimberBMI
//
//  Created by Ben Oveson on 3/5/18.
//  Copyright © 2018 Ben Oveson. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var weightTxt: WeightTxtField!
    
    @IBOutlet weak var heightTxt: WeightTxtField!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.7611742616, green: 0.5455978513, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        weightTxt.inputAccessoryView = calcBtn
        heightTxt.inputAccessoryView = calcBtn
    }

    @objc func calculate(){

    }


}

