//
//  WeightTxtField.swift
//  ClimberBMI
//
//  Created by Ben Oveson on 3/6/18.
//  Copyright © 2018 Ben Oveson. All rights reserved.
//

import UIKit
@IBDesignable
class WeightTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        }
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 0.4294463396, green: 0.3097161353, blue: 0, alpha: 0.03983274648)
        layer.cornerRadius = 5.0
        textAlignment = .center
    
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 0.4294463396, green: 0.3097161353, blue: 0, alpha: 0.648850132)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)}
    }
}
