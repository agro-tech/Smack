//
//  RoundedButton.swift
//  Smack
//
//  Created by Alan Ramos on 10/3/18.
//  Copyright © 2018 Alan Ramos. All rights reserved.
//

import UIKit

// makes design visible within interface builder
@IBDesignable
class RoundedButton: UIButton {
    
    // makes property modifyable via interface builder
    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    // initializes view
    override func awakeFromNib() {
        self.setupView()
    }
    
    // called by interface builder
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}
